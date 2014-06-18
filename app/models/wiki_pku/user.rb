module WikiPku
  class User < ActiveRecord::Base
    # Include default devise modules. Others available are:
    # :confirmable, :lockable, :timeoutable and :omniauthable
    devise :database_authenticatable, :registerable,
           :rememberable, :trackable, :validatable
    
    attr_accessor :login
    
    has_one       :picture, as: :imageable, dependent: :destroy
    accepts_nested_attributes_for :picture
    has_many      :entries
    
    has_many      :comments
    
    validates     :username, presence: true, uniqueness: {case_sensitive: false}, length: { in: 2..15}
    validates     :username, :format => { :with => /\A[\d\w]+\z/,:message => "用户名只能包含数字，英文字母，汉字" }
    rails_admin
    
    def self.find_first_by_auth_conditions(warden_conditions)
      conditions = warden_conditions.dup
      if login = conditions.delete(:login)
        where(conditions).where(["lower(username) = :value OR lower(email) = :value", { :value => login.downcase }]).first
      else
        where(conditions).first
      end
    end
  end
end
