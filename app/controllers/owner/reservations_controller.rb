class Owner::ReservationsController < ApplicationController
	def index
		@reservations = Reservation.where('date >= ?', Date.today)
	end

	def past_index
		@reservations = Reservation.where('date <= ?', Date.today)
	end
end
