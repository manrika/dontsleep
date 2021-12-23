Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get '/about', to: 'pages#about'
  get '/artists', to: 'artists#index'
  get '/releases', to: 'releases#index'
  get '/news', to: 'pages#news'

  get '/editor', to: 'pages#editor_home'

  get '/editor/artists', to: 'artists#editor_index'
  get '/editor/artists/new', to: 'artists#new'
  post '/editor/artists', to: 'artists#create'
  get '/editor/artists/:id', to: 'artists#show', as: :show_artist # can probably delete
  get '/editor/artists/:id/edit', to: 'artists#edit', as: :edit_artist
  patch '/editor/artists/:id', to: 'artists#update'
  delete '/editor/artists/:id', to: 'artists#destroy'

  get '/editor/releases', to: 'releases#editor_index'
  get '/editor/releases/new', to: 'releases#new'
  post '/editor/releases', to: 'releases#create'
  get '/editor/releases/:id', to: 'releases#show', as: :show_release # can probably delete
  get '/editor/releases/:id/edit', to: 'releases#edit', as: :edit_release
  patch '/editor/releases/:id', to: 'releases#update', as: :update_release
  delete '/editor/releases/:id', to: 'releases#destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
