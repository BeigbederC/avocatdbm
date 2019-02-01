Rails.application.routes.draw do
  get 'posts/new'
  devise_for :users
  get '/legal', to: 'pages#legal', as: 'legal'
  root to: 'pages#home'
  Rails.application.routes.draw do
  resources :posts, only: [:new, :create]
  # ...
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
