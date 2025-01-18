Rails.application.routes.draw do
  # Other routes
  root 'home#index'  # Set home page as root
  
  # Cook routes
  resources :cook do
    collection do
      get 'by_ingredients'
      get 'generate_dish'
    end
  end
  get "restauranthome/index"
  get "home/index"
  # Define the route for restauranthome#index
  get 'restauranthome', to: 'restauranthome#index', as: 'restauranthome'

  get "up" => "rails/health#show", as: :rails_health_check

 
#   root "restauranthome#index"

  resources :restaurants, only: [:index, :show] do
    resources :comments, only: [:create]
  end

end

