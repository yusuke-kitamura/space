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

	def destroy
		user = current_user
		salon = Salon.find(params[:salon_id])
		@favorite = Favorite.find_by(user_id: user.id, salon_id: salon.id)
		@favorite.destroy
		redirect_back(fallback_location: root_path)
	end
end
