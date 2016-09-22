Rails.application.routes.draw do
  root 'channels#index'
  mount ActionCable.server => '/cable'

  resources :messages, only: [:index]
  resources :sessions, only: [:new, :create]
  resources :channels, only: [:index, :show] do
    resources :videos, only: [:show]
  end
end
