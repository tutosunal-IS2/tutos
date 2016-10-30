class ApplicationController < ActionController::Base

  protect_from_forgery with: :exception, prepend: true
  before_action :configure_permitted_parameters, if: :devise_controller?
  skip_before_filter :verify_authenticity_token

  protected
    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :description, :avatar])
        devise_parameter_sanitizer.permit(:edit, keys: [:name, :description ])
        devise_parameter_sanitizer.permit(:account_update, keys: [:name, :description ])
    end


     def after_sign_in_path_for(resource)

      if tutor_signed_in?
    	   session["tutor_return_to"] || tutos_path
      elsif admin_signed_in?
        session["admin_return_to"] || rails_admin_path
      end
     end



     def new_session_path(scope)
      new_student_session_path
     end



end
