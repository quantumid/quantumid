Rails.application.routes.draw do
  root 'channels#index'
  resources :channels, only: [:index, :show] do
    resources :videos, only: [:show]
  end
end
