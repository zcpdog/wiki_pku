module WikiPku
  class Category < ActiveRecord::Base
    has_ancestry
    
    has_and_belongs_to_many  :entries
    
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
