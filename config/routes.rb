Rails.application.routes.draw do
  resources :cartlists
  resources :ratings
  resources :category_items
  resources :categories
  resources :items
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  #  post '/signup', to: 'users#create'
   post '/login',to: 'sessions#create'
   patch '/purchase/:id', to: 'items#purchased_item'
end
