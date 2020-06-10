class Favorite < ApplicationRecord
	belongs_to :user
	belongs_to :salon
	# 1ユーザーが1サロンに１お気に入りしかできないように指定
	validates :user_id, presence: true, uniqueness: {scope: :salon_id}
end
