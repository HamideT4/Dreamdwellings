class ApplicationController < ActionController::Base
    before_action :configure_devise_parameters, if: :devise_controller?

    def configure_devise_parameters
        devise_parameter_sanitizer.permit(:update, keys: [:name, :address, :phone, :description, :logo])
        devise_parameter_sanitizer.permit(:sign_in, keys: [:name, :address, :phone, :description, :logo])
    end

end
