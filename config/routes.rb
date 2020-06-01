Rails.application.routes.draw do
  devise_for :salons
  devise_for :users

  namespace :user do # urlの頭にuser/を付与
  	resource :users, only: [:show, :edit, :update]
  	resources :salons, only: [:index, :show]
  	resources :favorites, only: [:index, :show, :destroy]
  end

  root "homes#top"
  get 'about' => 'homes#about'

  namespace :salon do # urlの頭にsalon/を付与
  end

end
