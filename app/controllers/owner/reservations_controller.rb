class Owner::ReservationsController < ApplicationController
	def index
		@reservations = Reservation.all
	end
end
