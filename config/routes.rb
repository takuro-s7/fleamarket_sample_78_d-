Rails.application.routes.draw do
  root to: 'products#index'

  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions:      "users/sessions"
  }
  devise_scope :user do
    get '/users', to: redirect("/users/sign_up")
    get 'addresses', to: 'users/registrations#new_address'
    post 'addresses', to: 'users/registrations#create_address'
    get '/users/sign_out', to: 'devise/sessions#destroy'
  end
  
  resources :users, only: [:show, :index]do
    member do   
      get 'logout'
      get "card"
    end
  end  
  resources :products
end
