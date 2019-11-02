Rails.application.routes.draw do
  get "pets/locations"
  resources :pets
  get "pages/map"
  devise_for :users , controllers: {
    registrations: 'users/registrations', :omniauth_callbacks =>
  "users/omniauth_callbacks"
  }

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'pages#index'
end
