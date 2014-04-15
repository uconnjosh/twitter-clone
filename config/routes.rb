Twitter::Application.routes.draw do
 resources :users
 resources :tweets
 root :to => 'users#index'
end
