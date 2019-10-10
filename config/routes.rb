Rails.application.routes.draw do
  get "pets/locations"

  resources :pets

  devise_for :users , controllers: {
    registrations: 'users/registrations'
  }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'pages#index'
end
