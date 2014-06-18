module WikiPku
  class Comment < ActiveRecord::Base
    validates_presence_of :entry, :user, :content
    
    belongs_to :entry
    belongs_to :user
    
    default_scope {order("created_at DESC")}
  end
end
