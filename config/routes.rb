Rails.application.routes.draw do


  get '/', to: 'sessions#new', as: 'login'
   post '/sessions', to: 'sessions#create'
   get '/secrets', to: 'secrets#show', as: 'secret'
   delete '/sessions', to: 'sessions#destroy'
   resources :sessions,only: [:show]
end
