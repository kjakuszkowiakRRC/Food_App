Rails.application.routes.draw do
  root "restaurants#index"

  get "/restaurants", to: "restaurants#index"
end
