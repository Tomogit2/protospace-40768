Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:show]  # ユーザー詳細ページのルート設定
  resources :prototypes, only: [:index, :new, :create, :show, :edit, :update, :destroy] do
    resources :comments, only: [:create]
  end
  root to: "prototypes#index"
end
