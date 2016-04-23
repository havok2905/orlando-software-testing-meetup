Rails.application.routes.draw do
  root 'home#index'

  resources :events, only: [:index, :show, :new, :create, :edit, :update, :destroy]
  resources :speakers, only: [:index, :show, :new, :create, :edit, :update, :destroy]
end
