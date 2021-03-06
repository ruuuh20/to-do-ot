Rails.application.routes.draw do
  resources :activities do
    member do
      patch :complete
    end
  end
  resources :clients
  resources :appointments do
    resources :activities
  end

  resources :therapists

  root 'static_pages#home'
  resources :users
  get '/login'=> 'sessions#new'
  post '/sessions' => 'sessions#create'
  get '/logout' => 'sessions#destroy'
  # patch '/activities/:id/complete' => 'activities#complete'
end
