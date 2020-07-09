Rails.application.routes.draw do
  root to: 'products#index'

  resources :products, except: [:index]
    resources :mid_category, only: :new
    resources :small_category, only: :new

  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions:      "users/sessions"
  }
  devise_scope :user do
    get 'addresses', to: 'users/registrations#new_address'
    post 'addresses', to: 'users/registrations#create_address'
    get '/users/sign_out', to: 'devise/sessions#destroy'
  end
  
  resources :users, only: [:new, :show]

  resources :products
  get 'products/new/mid_category', to: 'products#mid_category'
  get 'products/new/small_category', to: 'products#small_category'
end