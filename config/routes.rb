Rails.application.routes.draw do
  root 'gossips#index'

  resources :gossips
  # get '/gossips', to: 'gossips#index'
  # post'/gossips', to: 'gossips#create'
  # get '/gossips/new', to: 'gossips#new'
  # get '/gossips/:id', to: 'gossips#show'
  # get '/gossips/:id/edit', to: 'gossips#edit'
  # patch '/gossips/:id', to: 'gossips#update'
  # put '/gossips/:id', to: 'gossips#update'
  # delete '/gossips/:id', to: 'gossips#destroy'

  resources :users, :except => [:edit, :update, :destroy]

  resources :cities, :only => [:index, :show]

  resources :comments, :except => [:show]

  resources :sessions, :only => [:new, :create, :destroy]

  get '/team', to: 'team#team' # to rename later

  get '/contact', to: 'contact#contact' # to rename later

  get '/welcome', to: 'welcome#welcome' # to rename later
  get '/welcome/:user_name', to: 'welcome#welcome' # to rename later
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
end
