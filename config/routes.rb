Rails.application.routes.draw do
  root 'gossip#home'

  get '/home', to: 'gossip#home'
  get '/home/:id', to: 'gossip#show'
  get '/team', to: 'gossip#team'
  get '/contact', to: 'gossip#contact'
  get '/welcome', to: 'gossip#welcome'
  get '/welcome/:user_name', to: 'gossip#welcome'
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
end
