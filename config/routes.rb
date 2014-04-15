Twitter::Application.routes.draw do
 resources :sessions
 resources :users
 resources :tweets
 resources :follows
 root :to => 'users#index'
end
