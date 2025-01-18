Rails.application.routes.draw do
  # Other routes
  root 'home#index'  # Set home page as root
  
  # Cook routes
  resources :cook, only: [] do
    collection do
      get 'by_ingredients'
      get 'generate_dish'
    end
  end

end
