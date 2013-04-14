R20130326Waitlist::Application.routes.draw do
  root :to => 'home#index'
  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
  resources :users do
    collection do
      get 'timechart'
      get 'waiting'
      get 'seated'
    end
  end

  resources :reservations do
    member do
      post 'sendtext'
    end
  end
end
