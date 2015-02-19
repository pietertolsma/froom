Rails.application.routes.draw do

resources :categories
resources :posts
resources :users
resources :sessions
resources :comments

root to: 'categories#index'
get 'login' => 'sessions#new'
post 'login' => 'sessions#create'
delete 'logout' => 'sessions#destroy'

end
