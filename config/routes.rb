Rails.application.routes.draw do
  resources :courses
  resources :info_texts
  resources :notices
  resources :courses
  resources :covers
  resources :comments
  resources :users

  get '/list_courses/:type_id', to: 'courses#list_courses'
  get '/dashboard', to: 'users#main'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  #get '/live-the-experience', to: 'videos#index'
  root 'main#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
