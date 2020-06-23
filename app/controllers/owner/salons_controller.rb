class Owner::SalonsController < ApplicationController
	def index
		@salons = current_owner.salons.all
		@salon = Salon.new
	end

	def create
		@salon = Salon.new(salon_params)
		@salon.save!
		redirect_to owner_salons_path, notice: "サロンを投稿しました"
	end

	def show
		@salon = Salon.find(params[:id])
	end

	def edit
		@salon = Salon.find(params[:id])
	end

	def update
		@salon = Salon.find(params[:id])
		@salon.update(salon_params)
		redirect_to owner_salon_path, notice: "サロン情報の編集に成功しました"
	end

	def destroy
	end

	# prefecture_codeをintへ変換
	private
	def salon_params
		params.require(:salon).permit(:salon_name, :salon_image, :explanation, :postal_code, :address, :price, :seat_number, :prefecture_code, :station, :owner_id).merge(prefecture_code: params[:salon][:prefecture_code].to_i)
	end
end
