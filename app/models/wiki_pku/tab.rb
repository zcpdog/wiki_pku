module WikiPku
  class Tab < ActiveRecord::Base
    belongs_to :category
    
    validates :category, presence: true
    
    before_save :fill_name 
    
    rails_admin do
      nestable_list true
      edit do
        field :category
      end
    end
    
    private
    def fill_name
      self.name = category.name
    end
  end
end
