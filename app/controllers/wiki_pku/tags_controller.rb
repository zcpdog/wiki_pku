require_dependency "wiki_pku/application_controller"

module WikiPku
  class TagsController < ApplicationController
    def show
      @tag = Tag.find params[:id]
      @entries = @tag.entries.page params[:page]
    end
  end
end
