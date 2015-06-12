Rails.application.routes.draw do

  namespace :admin do
    get '/' => 'basea#index'
    get '/login' => 'sessions#new'
    post '/post' => 'sessions#create'
  end

  resources :venues

  resources :schedules

  resources :bands

end