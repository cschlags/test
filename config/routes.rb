VID::Application.routes.draw do

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root "pages#home"

  get "/style", to: "pages#style", as: :style
  get "/tour", to: "pages#tour", as: :tour
  get "/clients", to: "pages#clients", as: :clients
  get "/about", to: "pages#about", as: :about

  resources :posts, only: [ :index, :show ]

end
