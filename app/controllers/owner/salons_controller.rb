class Owner::SalonsController < ApplicationController
	def index
		@salons = current_owner.salons.all
		@salon = Salon.new
	end

	def create
		@salon = Salon.new(salon_params)
		@salon.owner_id = current_owner.id
		if @salon.save
			redirect_to owner_salons_path, notice: "サロンを投稿しました"
		else
			redirect_to owner_salons_path, alert: "空欄がありますので、再度入力してください"
		end
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
		@salon = Salon.find(params[:id])
		@salon.destroy
		redirect_to owner_salons_path, notice: "サロンを削除しました"
	end

	#stringでは値を取得できないためprefecture_codeをintegerへ変換
	private
	def salon_params
		params.require(:salon).permit(:salon_name, :salon_image, :explanation, :postal_code, :address, :price, :seat_number, :prefecture_code, :station, :owner_id).merge(prefecture_code: params[:salon][:prefecture_code].to_i)
	end
end
