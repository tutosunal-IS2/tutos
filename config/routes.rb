Rails.application.routes.draw do

  
  get 'entrar' => 'intro#renderEntrar'
  get 'team' => 'about#renderAbout'
  get 'function' => 'services#renderServices'

  root "pages#index"
end
