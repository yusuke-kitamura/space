Rails.application.routes.draw do
  devise_for :salons
  devise_for :users

  namespace :user do # urlの頭にuser/を付与
  	get '' => 'users#show'
  	get 'edit' => 'users#edit'
  end

  root "homes#top"
  get 'about' => 'homes#about'

  namespace :salon do # urlの頭にsalon/を付与
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
