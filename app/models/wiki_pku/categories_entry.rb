module WikiPku
  class CategoriesEntry < ActiveRecord::Base
    belongs_to :entry
    belongs_to :category
  end
end
