Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:show]  # ユーザー詳細ページのルート設定
  resources :prototypes, only: [:index, :new, :create, :show, :edit, :update, :destroy] do
    resources :comments, only: [:create]
  get 'prototypes/index'  #この行は不要かもしれない。すでにresources :prototypesでindexアクションへのルートは生成されているからです。この行を削除しても、indexアクションへのルーティングには影響はありません。
  root to: "prototypes#index"
end
