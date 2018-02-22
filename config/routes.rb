Rails.application.routes.draw do
  get 'pages/published'

  get 'pages/draft'

  devise_for :users, path: '', path_names: {sign_in: 'login', sign_out: 'logout', sign_up: 'register' }
  resources :posts
  root to: 'pages#published'
end
