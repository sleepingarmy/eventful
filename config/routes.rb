Rails.application.routes.draw do

  namespace :admin do
    get '/' => 'base#index'
    get '/login' => 'sessions#new'
    post '/login' => 'sessions#create'
    delete '/logout' => 'sessions#destroy'
  end

  resources :venues

  resources :schedules

  resources :bands

end