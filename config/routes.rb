Rails.application.routes.draw do
  root "restaurants#index"
  # dishes "dishes#index"
  # locations "locations#index"


  # resources :restaurants do
  #   resources :dishes
  # end
  resources :restaurants, :dishes, :locations
end
