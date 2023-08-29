Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root to: 'chats#index'
  get 'search', to: 'chats#search'
  # Defines the root path route ("/")
  # root "articles#index"
end
