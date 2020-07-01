Rails.application.routes.draw do
  root 'items/index'

  devise_for :users, controllers: {
    registrations: 'users/registrations',
  }
  root to: 'products#index'
end
