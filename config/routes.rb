Rails.application.routes.draw do
  # get 'users/new'
  root 'static_pages#home'
  get '/help',to: 'static_pages#help'
  get '/about', to: 'static_pages#about'
  get '/roll', to: 'static_pages#roll'
  get '/home', to: 'static_pages#home'
  get '/signup', to: 'users#new'
  resources :users

  # get  'static_pages/home'
  # get  'static_pages/help'
  # get  'static_pages/about'
  # get  'static_pages/roll'
end
