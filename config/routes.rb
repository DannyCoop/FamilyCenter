Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :users, only: [:index, :create, :show, :update]
      resources :tasks, only: [:index, :show, :create, :update]
      resources :events, only: [:index]
      resources :families, only: [:index, :show]
      resources :pending_tasks, only: [:create, :update, :destroy]
      resources :calendar_events, only: [:index, :create, :destroy]
      post "/login", to: "users#login" 
      get "/requester_task/:id", to: "pending_tasks#requester_task"
      get "/requestee_task/:id", to: "pending_tasks#requestee_task"
    end
  end
end
