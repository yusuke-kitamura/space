class User::ReservationsController < ApplicationController
	def create
		@reservation = Reservation.new(reservation_params)
		@reservation.user_id = current_user.id
		if @reservation.save
			redirect_to user_reservations_path, notice: "予約完了しました。"
		else 
			@salon = Salon.find(params[:salon_id])
			redirect_to user_salon_path(@salon), alert: "もう一度やり直してください"
		end
	end

	def destroy
	end

	def index
		@reservations = Reservation.where('date >= ?', Date.today)
		# 今日以降の日付の予約のみを取得
	end

	def past_index
		@reservations = Reservation.where('date <= ?', Date.today)
	end

	private
	def reservation_params
		params.require(:reservation).permit(:salon_id, :user_id, :date)
	end
end
