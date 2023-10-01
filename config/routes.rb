Rails.application.routes.draw do
  devise_for :users
  resources :foodbanks
  #get 'home/index'
  get 'home/about'
  get 'home/list'
  get 'home/banks'
  root 'home#index'
end
