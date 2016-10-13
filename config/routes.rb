Rails.application.routes.draw do


  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :estudiantes
  resources :subjects
  get 'tutorials/index'

  devise_for :admins
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
  get 'tutos' => 'tutorials#home'
  post "contactUS" => 'pages#contactUS'

  get 'solving' => 'subjects#solve'
  get 'study' => 'estudiantes#renderEstudiantes'
  
  root "pages#index"
end
