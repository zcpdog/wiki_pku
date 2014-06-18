require_dependency "wiki_pku/application_controller"

module WikiPku
  class WelcomeController < ApplicationController
    def index
      @blocks = Block.first(6)
    end
  end
end
