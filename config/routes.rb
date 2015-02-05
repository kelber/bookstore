Rails.application.routes.draw do

  resources :books

  devise_for :users , controllers: { registrations: "registrations" }
  root 'page#home'

   get 'dashboard' => 'page#dashboard'

   post '/buy/:slug', to: 'transactions#create', as: :buy
   get '/pickup/:guid', to: 'transactions#pickup', as: :pickup


    resources :subscribers




end


