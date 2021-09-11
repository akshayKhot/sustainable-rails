Rails.application.routes.draw do
  resources :widgets, only: %i{ show index }
  
  # Custom Routes
  get "/amazing", to: "widgets#index"
end
