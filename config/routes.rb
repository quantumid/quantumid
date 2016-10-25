Rails.application.routes.draw do
  root 'channels#index'
  mount ActionCable.server => '/cable'

  resources :channels, only: [:index, :show] do
    resources :videos, only: [:show]
  end

  namespace :admin do
    resources :channels
    get '', to: 'dashboard#index', as: '/'
  end

  resources :chats, only: [:index, :show]

  devise_for :users, :controllers => { registrations: 'users/registrations', omniauth_callbacks: 'users/omniauth_callbacks' },
                     :path_names => { sign_out: 'devise/sessions#destroy' }
end
