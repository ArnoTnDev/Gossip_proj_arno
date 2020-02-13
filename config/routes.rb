Rails.application.routes.draw do
  get '/contact', to: 'static#contact'
  get '/team', to: 'static#team'
  root 'home#index'
  get '/welcome/:name', to: 'welcome#user'
  resources :gossip
  resources :user, except: [:destroy]
  resources :city, except: [:destroy] 
  resources :sessions, only: [:new, :create, :destroy]
end
