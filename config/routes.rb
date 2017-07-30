Rails.application.routes.draw do
  devise_for :users

  resources :posts do

    # get '/post', to: 'posts#preview'
    collection do
      get 'my_posts_preview'
    end
    resources :comments
  end
  
  root 'posts#index'


end
