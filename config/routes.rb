Rails.application.routes.draw do
  root to: 'categories#index'

  get 'categories', to: 'categories#index'
  get "categories/:id", to: "categories#show", id: /\d+/, as: 'category'

  resources "users", only: %i[index show]
end
