class User::UsersController < ApplicationController
	def edit
		@user = current_user
	end

	def update
		@user = cuurent_user
		@user.update
		redirect_to  edit_user_users_path, notice: "会員情報の編集に成功しました"
	end
end
