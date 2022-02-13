Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get '/about', to: 'pages#about'
  post '/about', to: 'pages#create', as: :create_subscriber
  delete '/editor/subscriber/:id', to: 'pages#destroy', as: :delete_subscriber
  get '/artists', to: 'artists#index'
  get '/releases', to: 'releases#index'
  get '/news', to: 'pages#news'

  get '/editor', to: 'pages#editor_home'

  get '/editor/artists', to: 'artists#editor_index'
  post '/editor/artists', to: 'artists#create', as: :create_artist
  patch '/editor/artists/:id', to: 'artists#update', as: :update_artist
  patch '/editor/artists/:id/move', to: 'artists#move', as: :move_artist
  delete '/editor/artists/:id', to: 'artists#destroy', as: :delete_artist

  get '/editor/releases', to: 'releases#editor_index'
  post '/editor/releases', to: 'releases#create', as: :create_release
  patch '/editor/releases/:id', to: 'releases#update', as: :update_release
  delete '/editor/releases/:id', to: 'releases#destroy', as: :delete_release
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
