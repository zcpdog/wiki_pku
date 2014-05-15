module WikiPku
  class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?
    before_filter :merge_abilities

    private
    def merge_abilities
      current_ability.merge(WikiPku::Ability.new(current_user))                                               
    end
    
    protected
    def configure_permitted_parameters
      devise_parameter_sanitizer.for(:sign_up) << :name
    end
  end
end
