module WikiPku
  class Entry < ActiveRecord::Base  
    paginates_per 20
     
    before_save  :update_tags
         
    has_one   :picture, as: :imageable, dependent: :destroy
    
    has_many  :categories_entries
    has_many  :categories, through: :categories_entries
    
    has_many  :entries_tags
    has_many  :tags, through: :entries_tags, uniq: true
    
    has_many  :comments
    
    accepts_nested_attributes_for :picture
    belongs_to :user
    
    rails_admin
    
    protected
    def update_tags
      tgs = []
      if self.tag_text.present?
        self.tag_text.split(/[;:]/).each do |tg|
          tgs.push Tag.find_or_create_by(name: tg)
        end
      end
      self.tags = tgs
    end
  end
end
