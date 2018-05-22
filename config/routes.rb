Rails.application.routes.draw do
  devise_for :users
  root :to => "home#index"
  match "*path", to: "home#index", via: :get

  namespace :api do
    namespace :v1 do
      get '/dashboard', to: 'dashboards#index', as: 'dashboard'
      resources :favorites, path: "my_list", only: %i( index create )
      delete '/my_list/:type/:id', to: 'favorites#destroy'
      resources :reviews, only: [:index, :create]
      resources :searches, path: "search", only: :index
      resources :series, only: :show
      resources :movies, only: :show do
        member do
          get '/executions', to: 'executions#show'
          put '/executions', to: 'executions#update'
        end
      end
      resources :recommendations, only: :index
    end
  end
end