Rails.application.routes.draw do

  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to:'homes#top'
  resources :books, only: [:edit, :index, :new, :show]
  resources :users, only: [:show, :edit]
end