Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :users, only: [:index, :create]
      resources :tasks, only: [:index]
      resources :events, only: [:index]
      post "/login", to: "users#login" 
    end
  end
end
