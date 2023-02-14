Rails.application.routes.draw do
  root 'gossip#index'

  get '/gossip', to: 'gossip#index'
  post'/gossip', to: 'gossip#create'
  get '/gossip/new', to: 'gossip#new'
  get '/gossip/:id', to: 'gossip#show'
  get '/gossip/:id/edit', to: 'gossip#edit'
  put '/gossip/:id', to: 'gossip#update'
  delete '/gossip/:id', to: 'gossip#destroy'

  get '/team', to: 'team#team'

  get '/contact', to: 'contact#contact'

  get '/welcome', to: 'welcome#welcome'
  get '/welcome/:user_name', to: 'welcome#welcome'
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
end
