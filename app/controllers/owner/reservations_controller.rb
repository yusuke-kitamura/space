class Owner::ReservationsController < ApplicationController
	def index
		@reservations = Reservation.where('date >= ?', Date.today)
	end
end
