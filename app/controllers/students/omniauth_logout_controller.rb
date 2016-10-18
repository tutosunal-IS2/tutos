class Students::OmniauthLogoutController < Devise::OmniauthCallbacksController
  def destroy_student

     sign_out @student
     redirect_to root_path

  end
end
