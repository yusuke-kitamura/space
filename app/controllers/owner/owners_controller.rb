class Owner::OwnersController < ApplicationController
	before_action :authenticate_owner!
	
	def edit
		@owner = current_owner
	end

	def update
		@owner = current_owner
		@owner.update(owner_params)
		redirect_to edit_owner_owners_path, notice: "オーナー情報の編集に成功しました"
	end

	private
	def owner_params
		params.require(:owner).permit(:name, :email)	
	end
end
