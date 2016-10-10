class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception, prepend: true
  skip_before_filter :verify_authenticity_token 
  

   def new_session_path(scope)
    new_student_session_path
   end

end
