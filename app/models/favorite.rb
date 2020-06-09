class Favorite < ApplicationRecord
	belongs_to :user
	belongs_to :salon
	validates :user_id, presence: true, uniqueness: {scope: :salon_id}
end
