Rails.application.routes.draw do

  resources :books

  devise_for :users
  root 'page#home'

   get 'dashboard' => 'page#dashboard'


end


