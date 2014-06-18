module WikiPku
  class Category < ActiveRecord::Base
    has_ancestry cache_depth: true
    
    validates :name, presence: true
    
    has_many  :categories_entries
    has_many  :entries, through: :categories_entries
      
    has_one    :tab
    has_one    :block
        
    rails_admin do
      nestable_tree({
        position_field: :position,
        max_depth: 3
      })
      edit do
        field :name, :string
      end
    end
    
  end
end