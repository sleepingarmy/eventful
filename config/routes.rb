Rails.application.routes.draw do

  namespace :admin do
    get '/' => 'basea#index'
    get '/login' => 'sessions#new'
    post '/login' => 'sessions#create'
  end

end