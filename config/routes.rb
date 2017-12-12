Rails.application.routes.draw do
  devise_for :users
  resources :courses
  resources :info_texts
  resources :notices
  resources :courses
  resources :covers
  resources :comments

  get '/list_courses/:id', to: 'courses#list_courses'
  get '/dashboard', to: 'admin#dashboard'
  get '/login', to: 'admin#login'

  #get '/live-the-experience', to: 'videos#index'
  root 'main#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
