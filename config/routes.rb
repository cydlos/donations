Rails.application.routes.draw do
  get 'pages/home'
  get 'doadores/index'
  get 'doadores/new'
  get 'doadores/create'
  get 'doadores/edit'
  get 'doadores/update'
  get 'doadores/destroy'
  get 'vitimas/index'
  get 'vitimas/new'
  get 'vitimas/create'
  get 'vitimas/edit'
  get 'vitimas/update'
  get 'vitimas/destroy'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
