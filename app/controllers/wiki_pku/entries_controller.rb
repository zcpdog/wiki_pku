require_dependency "wiki_pku/application_controller"

module WikiPku
  class EntriesController < ApplicationController
    before_filter :authenticate_user!, only: [:new, :create, :edit, :update]
    before_filter :set_entry, only: [:show,:edit,:update]
    def index
      redirect wiki_pku.root_path
    end
    
    def show
      @entry.increment!(:show_times) if @entry.present?
    end
    
    def search
      @key_words = params[:q]
      @entries = Entry.where("name like ? or content like ?", "%#{params[:q]}%","%#{params[:q]}%").page params[:page]
    end
    
    def new
      @entry = Entry.new
    end
    
    def create
      @entry = Entry.new(entry_params)
      @entry.user = current_user
      @entry.save
      redirect_to @entry
    end
    
    def update
     @entry.update_attributes(entry_params)
     @entry.increment(:edit_times)
     redirect_to @entry
    end
    
    def edit
    end
    
    private
      def set_entry
        @entry = Entry.find(params[:id])
      end
    
      def entry_params
        params.require(:entry).permit(:name,:content,:abstract, :tag_text, category_ids: [])
      end
  end
end
