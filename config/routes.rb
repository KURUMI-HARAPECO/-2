Rails.application.routes.draw do
  devise_for :users
  root 'homes#top'
  get 'home/about' => 'homes#about'

  # 課題4　追加
  post 'follow/:id' => 'relationships#follow', as: 'follow' # フォローする
  post 'unfollow/:id' => 'relationships#unfollow', as: 'unfollow' # フォロー外す
  get '/users/:id/follow' => 'users#follow', as: 'show_follower'
  get '/users/:id/follower' => 'users#follower', as: 'show_follow'

  resources :users,only: [:show,:index,:edit,:update,:follow,:follower]
  resources :books
end