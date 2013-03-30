R20130326Waitlist::Application.routes.draw do
  root :to => 'home#index'
  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
  resources :reservations, :only => [:index, :new, :create]
  resources :guests
  resources :users do
      collection do
        post 'sendtxt'
      end
  end
end
