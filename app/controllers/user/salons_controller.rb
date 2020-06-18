class User::SalonsController < ApplicationController
	def index
    	@q = Salon.ransack(params[:q])
    	@salons = @q.result(distinct: true).page(params[:page]).reverse_order.per(2)
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
