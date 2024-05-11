Rails.application.routes.draw do
  resources :vitimas, only: [:new, :create, :index, :edit, :update, :destroy]
  resources :doadores, only: [:new, :create, :index, :edit, :update, :destroy]
  root 'home#index'
end
