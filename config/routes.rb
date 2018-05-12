Rails.application.routes.draw do

  devise_for :users
  resources :posts do
    resources :comments, only: [:create, :destroy]
  end

  get '/about' => 'posts#about'

  root 'posts#main'
end
