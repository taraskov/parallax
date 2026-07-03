Rails.application.routes.draw do
  resources :demos do
    collection do
      get 'joy'
    end
  end
  root 'demos#joy'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"

  get "demos", to: "demos#index"
  get "demos/joy", to: "demos#joy"
  get "demos/isite", to: "demos#isite"
end
