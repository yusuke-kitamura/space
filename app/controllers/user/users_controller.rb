class User::UsersController < ApplicationController
	def edit
		@user = current_user
	end

	def update
		@user = current_user
		@user.update(user_params)
		redirect_to  edit_user_users_path, notice: "会員情報の編集に成功しました"
	end

	private
	def user_params
		params.require(:user).permit(:name, :kana_name, :email, :phone_number)
	end
end
