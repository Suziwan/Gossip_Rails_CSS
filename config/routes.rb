Rails.application.routes.draw do
  root 'gossips#index'

  get '/gossips', to: 'gossips#index'
  post'/gossips', to: 'gossips#create'
  get '/gossips/new', to: 'gossips#new'
  get '/gossips/:id', to: 'gossips#show'
  get '/gossips/:id/edit', to: 'gossips#edit'
  put '/gossips/:id', to: 'gossips#update'
  delete '/gossips/:id', to: 'gossips#destroy'

  get '/team', to: 'team#team'

  get '/contact', to: 'contact#contact'

  get '/welcome', to: 'welcome#welcome'
  get '/welcome/:user_name', to: 'welcome#welcome'
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
end
