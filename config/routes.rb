Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # sweets
  root "sweets#index"
  resources :sweets, only:[:new, :create, :edit, :update, :show, :destroy]

end
