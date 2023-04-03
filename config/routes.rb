Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "users#index"
  resources :users
  devise_for :user

  devise_scope :user do
    get "/signout", to: "devise/sessions#destroy", as: :signout
  end

end
