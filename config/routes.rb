Rails.application.routes.draw do
 # 以下のルーティングを定義
 get '/users/new', to: 'users#new'
 post '/users', to: 'users#create'
 #一覧画面へのルーティング
 get 'users', to: 'users#index'
 # 削除を行うためのルーティング
 delete '/users/:id', to: 'users#destroy'
 get '/users/:id/edit', to: 'users#edit'
 patch '/users/:id', to: 'users#update'
end
