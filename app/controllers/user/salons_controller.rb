class User::SalonsController < ApplicationController
	def index
    	@q = Salon.ransack(params[:q])
    	p @q
    	@salons = @q.result(distinct: true)
	end

	def show
		@salon = Salon.find(params[:id])
		@reservation = Reservation.new
	end

	private
	def salon_params
		params.require(:salon).permit(:salon_name, :salon_image, :explanation, :postal_code, :address, :price, :seat_number, :prefecture_code, :station)
	end
end
