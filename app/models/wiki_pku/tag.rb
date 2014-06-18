module WikiPku
  class Tag < ActiveRecord::Base
    paginates_per 20
    validates :name, presence: true
    
    has_many  :entries_tags
    has_many  :entries, through: :entries_tags
  end
end
