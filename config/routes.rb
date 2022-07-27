Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :foods, only: [:index, :show, :add]
  resources :recipes, only: [:index, :show, :add, :public]

  # Defines the root path route ("/")
  get 'public_recipes' => 'recipes#public_recipes'
  get 'general_shopping_list' => 'foods#general_shopping_list'

end