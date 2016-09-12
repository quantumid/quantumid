Rails.application.routes.draw do
<<<<<<< HEAD

=======
  root 'channels#index'
  resources :channels, only: [:index, :show] do
    resources :videos, only: [:show]
  end
>>>>>>> ae3fc6f53181162f6df178db15025960067d8d08
end
