Rails.application.routes.draw do

  resources :posts do
    resources :comments, only: [:create, :destroy]
  end

  get '/about' => 'posts#about'

  root 'posts#main'
end
