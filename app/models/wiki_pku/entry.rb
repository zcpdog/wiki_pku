module WikiPku
  class Entry < ActiveRecord::Base    
    has_and_belongs_to_many  :categories
    
    rails_admin
    
  end
end
