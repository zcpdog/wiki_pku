module WikiPku
  class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?
    before_filter :merge_abilities
    before_filter :configure_permitted_parameters, if: :devise_controller?

    private
    def merge_abilities
      current_ability.merge(WikiPku::Ability.new(current_user))                                               
    end
    
    def after_sign_in_path_for(resource)
      wiki_pku.root_path
    end
    
    def after_sign_out_path_for(resource_or_scope)
      request.referrer
    end
    
    protected
    def configure_permitted_parameters
      devise_parameter_sanitizer.for(:sign_up) << :username
    end
    
    def configure_permitted_parameters
      devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:username, :email, :password, :password_confirmation, :remember_me) }
      devise_parameter_sanitizer.for(:sign_in) { |u| u.permit(:login, :username, :email, :password, :remember_me) }
      devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:username, :email, :password, :password_confirmation, :current_password) }
    end
  end
end
