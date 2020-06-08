class Salon < ApplicationRecord
	has_many :reservations, dependent: :destroy
	has_many :favorites, dependent: :destroy

	attachment :salon_image

	# mapの座標取得用
	geocoded_by :address
	after_validation :geocode, if: :address_changed?
end
