module WikiPku
  class Picture < ActiveRecord::Base
    belongs_to :imageable, polymorphic: true
    
    rails_admin
  end
end
