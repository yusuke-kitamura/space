class Favorite < ApplicationRecord
	belongs_to :user
	belongs_to :salon
	
	validates :user_id, presence: true
end
