Rails.application.routes.draw do
  resources :activities do
    member do
      patch :complete
    end
  end

  root 'activities#index'
  # patch '/activities/:id/complete' => 'activities#complete'
end
