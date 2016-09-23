Rails.application.routes.draw do
  devise_for :users
  root 'channels#index'
  mount ActionCable.server => '/cable'

  resources :channels, only: [:index, :show] do
    resources :videos, only: [:show]
  end

  resources :chats, only: [:index, :show] do
    resources :messages, only: [:show, :create]
  end

end
