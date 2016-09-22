Rails.application.routes.draw do
  root 'channels#index'
  mount ActionCable.server => '/cable'

  resources :channels, only: [:index, :show] do
    resources :videos, only: [:show]
  end
end
