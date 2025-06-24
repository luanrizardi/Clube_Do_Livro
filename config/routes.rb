Rails.application.routes.draw do
  resources :authorships
  root "clubs#index"

  resources :users
  resources :clubs
  resources :books
  resources :authors

  get    "/login",  to: "sessions#new"
  post   "/login",  to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
end
