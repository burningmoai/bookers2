Rails.application.routes.draw do

  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to:'homes#top'
  resources :books, only: [:new, :create, :edit, :index, :show, :update, :destroy]
  resources :users, only: [:show, :edit, :index, :update]
  get 'home/about' => 'homes#about',as:'about'
end
