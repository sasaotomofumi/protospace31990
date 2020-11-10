class ApplicationController < ActionController::Base
 
  before_action :configure_permitted_paramerers, if: :devise_controller?

    private
    def configure_permitted_paramerers
      devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :profile, :occupation, :position])
    end
end
