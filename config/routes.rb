Rails.application.routes.draw do

  namespace :admin do
    get '/' => 'base#index'
    get '/login' => 'sessions#new'
    post '/post' => 'sessions#create'
  end

end