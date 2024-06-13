Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:show]  # ユーザー詳細ページのルート設定
  resources :prototypes, only: [:index, :new, :create]
  get 'prototypes/index'
  root to: "prototypes#index"
end
