module WikiPku
  class Block < ActiveRecord::Base
    belongs_to :category
    rails_admin
  end
end
