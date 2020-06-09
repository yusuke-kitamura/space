class User::FavoritesController < ApplicationController
	def create
		user = current_user
		salon = Salon.find(params[:salon_id])
		Favorite.create(user_id: user.id, salon_id: salon.id)
		redirect_back(fallback_location: root_path)
	end

	def index
		@user = current_user
		@favorites = Favorite.where(user_id: @user.id).all
	end

	def destory
	end
end
