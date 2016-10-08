class Students::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def google_oauth2
    @student = Student.from_omniauth(request.env['omniauth.auth'])

    if @student.persisted?
      sign_in @student, :event => :authentication

      redirect_to root_path

    else

      redirect_to root_path, flash: { error: 'Authentication failed!' }
    end
  end

  def destroy_student
     
     sign_out @student
     redirect_to root_path
     
  end
  
end