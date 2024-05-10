Rails.application.routes.draw do
  resources :vitimas, only: [:new, :create, :index, :destroy]
  resources :doadores, only: [:new, :create, :index, :destroy]
  root 'home#index'
end
