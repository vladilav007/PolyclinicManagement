Rails.application.routes.draw do
  get 'users/index'
  get 'users/show'
  root to: 'categories#index'
  get 'categories', to: 'categories#index'
  get "categories/:id", to: "categories#show", id: /\d+/, as: 'category'
  
end
