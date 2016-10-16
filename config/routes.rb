Rails.application.routes.draw do



  resources :likes_tutors_by_subjects
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  resources :estudiantes do
    collection do
      get 'infoTutores', to: :infoTutores
    end
  end

  resources :likes_tutors_by_subjects do
    collection do
      get 'create_dd', to: :create_dd
    end
  end


  resources :subjects do
    collection do
      get 'solve', to: :solve
    end

  end
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



  get 'study' => 'estudiantes#renderEstudiantes'

  root "pages#index"
end
