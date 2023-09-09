Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root to: 'chats#index'


  #chatsController
  #get 'search', to: 'chats#search'
  # Defines the root path route ("/") viwesのchatindexに誘導
  # root "articles#index"

#adviser1
get 'adviser1/',to: 'adviser1#index',as: 'index_adviser1'
get 'adviser1/search', to: 'adviser1#search',as: 'search_adviser1'
delete 'adviser1/destroy/:id', to: 'adviser1#destroy',as: 'destroy_adviser1'

#adviser2
get 'adviser2/',to: 'adviser2#index',as: 'index_adviser2'
get 'adviser2/search', to: 'adviser2#search',as: 'search_adviser2'
delete 'adviser2/destroy/:id', to: 'adviser2#destroy',as: 'destroy_adviser2'

#adviser3
get 'adviser3/',to: 'adviser3#index',as: 'index_adviser3'
get 'adviser3/search', to: 'adviser3#search',as: 'search_adviser3'
delete 'adviser3/destroy/:id', to: 'adviser3#destroy',as: 'destroy_adviser3'

end
