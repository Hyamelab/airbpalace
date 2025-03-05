Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
  resources :palaces do

    resources :bookings, only: [:new, :create, :show, :update, :edit]
  end

  get "/dashboard/palaces", to: "pages#palaces"
  get "/dashboard/bookings_as_visitor", to: "pages#bookings_as_visitor"
  get "/dashboard/bookings_as_owner", to: "pages#bookings_as_owner"
  #   resources :bookings, only: [:update, :edit, :show, :index, :cancel]

  resources :bookings, only: [:update, :edit, :show, :index] do
    member do
      patch "/accept", to: "bookings#accept"
      patch "/refuse", to: "bookings#refuse"
    end
  end
end
