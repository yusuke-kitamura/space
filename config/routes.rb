Rails.application.routes.draw do
  devise_for :salons
  devise_for :users

  namescope :user do # urlの頭にuser/を付与
  end

  root "homes#top"
  get 'about' => 'homes#about'

  namescope :salon do # urlの頭にsalon/を付与
  end

  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
