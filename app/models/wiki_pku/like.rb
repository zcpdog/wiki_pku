module WikiPku
  class Like < ActiveRecord::Base
    belongs_to :entry
    belongs_to :user
  end
end
