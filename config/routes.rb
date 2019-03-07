  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
Rails.application.routes.draw do
  devise_for :users
  root to: 'boxes#index'
  resources :boxes, only: [:index, :show] do
    resources :subscriptions, only: [:new, :create]
    resources :reviews, only: [:new, :create]
  end
  resources :challenges, only: [:index, :show, :edit, :update] do
    member do
      post 'complete'
    end
  end
  resources :subscriptions, only: [:new, :show, :create] do
    resources :payments, only: [:new, :create]
  end
end
