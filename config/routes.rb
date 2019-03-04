  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :boxes, only: [:index, :show] do
    resources :subscriptions, only: [:new, :create]
    resources :reviews, only: [:new, :create]
  end
  resources :challenges, only: [:index, :show, :edit, :update, :destroy]
  resources :subscriptions, only: [:index, :show, :edit, :update, :destroy]
end
