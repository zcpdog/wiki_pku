require_dependency "wiki_pku/application_controller"

module WikiPku
  class UsersController < ApplicationController
    before_filter :set_user
    def show
      @entries = @user.entries.page params[:page]
    end
    
    def profile
    end
    
    def avatar(size=:thumb)
      if self.picture.present?
        self.picture.image.url(size)
      else
        asset_path "wiki_pku/user.jpg"
      end
    end
    
    protected
    def set_user
      @user = User.find_by(id: params[:id])
    end
  end
end
