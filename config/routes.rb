Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html


  get '/',to: 'chats#index',as: 'index_chats'
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

#adviser4
get 'adviser4/',to: 'adviser4#index',as: 'index_adviser4'
get 'adviser4/search', to: 'adviser4#search',as: 'search_adviser4'
delete 'adviser4/destroy/:id', to: 'adviser4#destroy',as: 'destroy_adviser4'
post '/adviser4/:id/follow_up', to: 'adviser4#follow_up', as: 'follow_up_adviser4'

#adviser5
get 'adviser5/',to: 'adviser5#index',as: 'index_adviser5'
get 'adviser5/search', to: 'adviser5#search',as: 'search_adviser5'
delete 'adviser5/destroy/:id', to: 'adviser5#destroy',as: 'destroy_adviser5'

#adviser6
get 'adviser6/',to: 'adviser6#index',as: 'index_adviser6'
get 'adviser6/search', to: 'adviser6#search',as: 'search_adviser6'
delete 'adviser6/destroy/:id', to: 'adviser6#destroy',as: 'destroy_adviser6'

#adviser7
get 'adviser7/',to: 'adviser7#index',as: 'index_adviser7'
get 'adviser7/search', to: 'adviser7#search',as: 'search_adviser7'
delete 'adviser7/destroy/:id', to: 'adviser7#destroy',as: 'destroy_adviser7'

#adviser8
get 'adviser8/',to: 'adviser8#index',as: 'index_adviser8'
get 'adviser8/search', to: 'adviser8#search',as: 'search_adviser8'
delete 'adviser8/destroy/:id', to: 'adviser8#destroy',as: 'destroy_adviser8'

#adviser9
get 'adviser9/',to: 'adviser9#index',as: 'index_adviser9'
get 'adviser9/search', to: 'adviser9#search',as: 'search_adviser9'
delete 'adviser9/destroy/:id', to: 'adviser9#destroy',as: 'destroy_adviser9'

end
