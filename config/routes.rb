Rails.application.routes.draw do
  devise_for :owners
  devise_for :users

  namespace :user do # urlの頭にuser/を付与
  	resource :users, only: [:show, :edit, :update]
  	resources :salons, only: [:index, :show] do
  	   resources :favorites, only: [:index, :show, :create, :destroy]
    end
  	resources :reservations, only: [:index, :show, :create, :destroy]
  end

  root "homes#top"
  get 'about' => 'homes#about'

  namespace :owner do # urlの頭にowner/を付与
  	resource :owners, only: [:show, :edit, :update, :destroy]
  	resources :salons
  	resources :reservations, only: [:index, :show]
  end

end
