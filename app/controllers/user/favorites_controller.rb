class User::FavoritesController < ApplicationController
	def create
		@salon = Salon.find(params[:salon_id])
		@favorite = @salon.favorites.new(user_id: current_user.id)
    	@favorite.save!
	end

	def index
		@user = current_user
		@favorites = Favorite.where(user_id: @user.id).all
	end

	def destroy
		@salon = Salon.find(params[:salon_id])
		@favorite = Favorite.find_by(user_id: current_user.id)
		@favorite.destroy!
	end
end
