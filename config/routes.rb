Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  resources :riders,  only: [:index, :show]
  resources :contests, only: [:new, :create]
  get "/contests", to: "contests#new"
  get "/photos", to: "pages#photos"
  get "/locations", to: "pages#locations"
  get "/thankyou", to: "pages#thankyou"

  # Defines the root path route ("/")
  root "pages#home"
end

