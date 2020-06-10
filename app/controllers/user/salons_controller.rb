class User::SalonsController < ApplicationController
	def index
    @q = Salon.ransack(params[:q])
    @salons = @q.result(distinct: true)
	end

	def show
		@salon = Salon.find(params[:id])
	end


	private
	def salon_params
		params.require(:salon).permit(:salon_name, :salon_image, :explanation, :postal_code, :address, :price, :seat_number)
	end
end
