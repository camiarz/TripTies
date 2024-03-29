Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
  get 'about', to: 'pages#about', as: :about
  # Defines the root path route ("/")
  # root "posts#index"
  resources :trips do
    resources :matches, except: [:create]
  end

  resources :matches, only: [:create] do
    resources :chatrooms, only: :show
  end

  get '/my_matches', to: 'matches#my_matches', as: 'my_matches'
  post '/trips/:trip_id/swipe_matches', to: 'matches#swipe_matches', as: 'swipe_matches'

  resources :chatrooms, only: %i[index show] do
    resources :messages, only: :create
  end

  resources :users

  resources :trips, only: [:destroy]

  resources :trip_interests
end
