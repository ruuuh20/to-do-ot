Rails.application.routes.draw do
  resources :activities do
    member do
      patch :complete
    end
  end

  root 'static_pages#home'
  # patch '/activities/:id/complete' => 'activities#complete'
end
