Rails.application.routes.draw do
  resources :movies
  resources :actors

  root 'movies#index'
end
