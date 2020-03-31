Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations',
  }
  devise_scope :user do
    get 'addresses', to: 'users/registrations#new_address'
    post 'addresses', to: 'users/registrations#create_address'
  end
  namespace :mypages do
    resources :users, only: :show
  end
  root to: "products#index"
  resources :products do
    collection do
      get 'search'
    end
  end
end
