Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:show]  # ユーザー詳細ページのルート設定
  get 'prototypes/index'
  root to: "prototypes#index"
end
