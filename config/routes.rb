Rails.application.routes.draw do
  resources :widgets, only: %i[ show index ]
  resources :widget_ratings, only: %i[ create ]
  
  # Custom Routes
  get "/amazing", to: "widgets#index"
end
