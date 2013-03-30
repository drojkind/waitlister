R20130326Waitlist::Application.routes.draw do
  root :to => 'home#index'
  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
  resources :reservations, :only => [:index, :new, :create]
  resources :users
  resources :guests do
    collection do
      post 'sendtext'
    end
  end
end
