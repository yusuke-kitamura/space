class Owner::SalonsController < ApplicationController
	def index
		@salons = Salon.all
		@salon = Salon.new
	end

	def create
		@salon = Salon.new(salon_params)
		@salon.save
		redirect_to owner_salons_path
	end

	def show
		@salon = Salon.find(params[:id])
	end

	def edit
		@salon = Salon.find(params[:id])
	end

	def update
	end

	def destroy
	end

	private
	def salon_params
		params.require(:salon).permit(:salon_name, :salon_image, :explanation, :postal_code, :address, :price, :seat_number)
	end
end
