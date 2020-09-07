Rails.application.routes.draw do
  resources :pending_tasks
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :users, only: [:index, :create, :show, :update]
      resources :tasks, only: [:index, :create]
      resources :events, only: [:index]
      resources :pending_tasks, only: [:create, :destroy]
      post "/login", to: "users#login" 
      get "/requester_task", to: "pending_task#requester_task"
      get "/requestee_task", to: "pending_task#requestee_task"
    end
  end
end
