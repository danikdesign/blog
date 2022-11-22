Rails.application.routes.draw do
  get 'home/index'
  get 'about' => 'pages#about'
  get 'terms' => 'pages#terms'

  resource :contacts, only: [:new, :create], path_names: { :new => '' }
  resources :articles
  resource :terms, only: [:show]
  resource :about, only: [:show]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
