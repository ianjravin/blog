Rails.application.routes.draw do

  devise_for :users
  resources :posts do
  resources :projects
  resources :comments
  end

  root "posts#index"

  get '/about', to: 'pages#about'

end
