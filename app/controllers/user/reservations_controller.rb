class User::ReservationsController < ApplicationController
	def create
		@reservation = Reservation.new(reservation_params)
		@reservation.user_id = current_user.id
		@reservation.save
		redirect_back(fallback_location: root_path)
	end

	def destroy
	end

	def index
		@reservations = Reservation.where('date >= ?', Date.today)
		# 今日以降の日付の予約のみを取得
	end

	private
	def reservation_params
		params.require(:reservation).permit(:salon_id, :user_id, :date)
	end
end
