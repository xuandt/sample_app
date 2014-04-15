Rails.application.routes.draw do
	resources :users

  root  'static_pages#home'
  
  match '/signup',  to: 'users#new',            via: 'get'
  match '/signin',  to: 'sessions#new',         via: 'get'
  match '/signout', to: 'sessions#destroy',     via: 'delete'
  match '/help',    to: 'static_pages#help',    via: 'get'
  match '/about',   to: 'static_pages#about',   via: 'get'
  match '/contact', to: 'static_pages#contact', via: 'get'
  

  get 'static_pages/home'

  get 'static_pages/help'

 get "static_pages/about"
  
 get "static_pages/contact"

get 'register' => 'users#new', :as => 'register'
get 'login' => 'sessions#new', :as => 'login'
get 'logout' => 'sessions#destroy', :as => 'logout' 
resources :sessions


end


