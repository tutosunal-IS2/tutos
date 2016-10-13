class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception, prepend: true

   def after_sign_in_path_for(resource)
  	session["tutor_return_to"] || tutos_path
   end

   def new_session_path(scope)
    new_student_session_path
   end

end
