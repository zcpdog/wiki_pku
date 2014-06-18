require_dependency "wiki_pku/application_controller"

module WikiPku
  class TabsController < ApplicationController
    def index
      redirect wiki_pku.root_path
    end
    
    def show
      @tab = Tab.find params[:id]
      @entries = @tab.category.entries.page params[:page]
    end
  end
end