class Salon < ApplicationRecord
	has_many :reservations, dependent: :destroy
	has_many :favorites, dependent: :destroy

	attachment :salon_image
end
