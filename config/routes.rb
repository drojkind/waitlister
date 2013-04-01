R20130326Waitlist::Application.routes.draw do
  root :to => 'home#index'
  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
  resources :users
  resources :reservations do
    member do
      post 'sendtext'
    end
  end
end
