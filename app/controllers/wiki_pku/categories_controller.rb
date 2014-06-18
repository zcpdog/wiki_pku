require_dependency "wiki_pku/application_controller"

module WikiPku
  class CategoriesController < ApplicationController
    def index
      redirect wiki_pku.root_path
    end
    
    def show
      @category= Category.find params[:id]
      @entries = @category.entries.page params[:page]
    end
  end
end