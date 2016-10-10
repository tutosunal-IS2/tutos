Rails.application.routes.draw do


  resources :tutoria
  devise_for :tutors

  
  devise_for :students, 
  	controllers: {
  		 omniauth_callbacks: "students/omniauth_callbacks" 
       
  		}

  devise_scope :user do delete "logout" => "devise/sessions#destroy" end
 #get 'logout' => 'students/omniauth_callbacks#destroy_student'
  
  get 'entrar' => 'intro#renderEntrar'
  get 'team' => 'about#renderAbout'
  get 'function' => 'services#renderServices'
  post "contactUS" => 'pages#contactUS'
  root "pages#index"


  
    
end
