Rails.application.routes.draw do
  get 'restaurants/reviews'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "controller#action"

  resources :restaurants do
    resources :reviews, only: [ :index, :new, :create ]
  end
  resources :reviews, only: [ :show, :edit, :update, :destroy]

  end
