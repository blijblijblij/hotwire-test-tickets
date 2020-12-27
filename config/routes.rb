Rails.application.routes.draw do
  resources :tickets do
    resources :comments, only: %i[new create]
  end

  root to: 'tickets#index'
end
