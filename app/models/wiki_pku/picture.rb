module WikiPku
  class Picture < ActiveRecord::Base    
    belongs_to :imageable, polymorphic: true
    validates :image, presence: true
    mount_uploader :image, ImageUploader
  
    rails_admin do
      edit do
        field :image
      end
      list do
        field :id
        field :image
        field :imageable
        field :created_at
        field :updated_at
      end
    end
  end
end
