Rails.application.routes.draw do
  
  devise_for :users
  resources :trackers;
  root 'trackers#index'
  
end