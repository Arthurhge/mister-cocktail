Rails.application.routes.draw do
  resources :cocktails, only: [:index, :create, :new, :show] do
    resources :doses, only: [:new, :create]
  end
  root 'cocktails#index'
  resources :doses, only: [:destroy]
end
