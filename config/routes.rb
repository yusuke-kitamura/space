Rails.application.routes.draw do
  devise_for :owners, controllers: {   
  registrations: 'owners/registrations',
  sessions: 'owners/sessions' }

  devise_for :users, controllers: {   
  registrations: 'users/registrations',
  sessions: 'users/sessions' }

  namespace :user do # urlの頭にuser/を付与
    get 'favorites' => 'favorites#index'
    get 'reservations' => 'reservations#index'
    get 'reservations/past' => 'reservations#past_index'
  	resource :users, only: [:show, :edit, :update]
  	resources :salons, only: [:index, :show] do
  	   resources :favorites, only: [:create, :destroy]
       resources :reservations, only: [:create, :destroy]
    end
  end

  root "homes#top"
  get 'about' => 'homes#about'

  namespace :owner do # urlの頭にowner/を付与
    get 'reservations' => 'reservations#index'
    get 'reservations/past' => 'reservations#past_index'
  	resource :owners, only: [:show, :edit, :update, :destroy]
  	resources :salons
  end

end
