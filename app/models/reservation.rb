class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :salon

  validates :date, presence: true
  validates :user_id, presence: true
end
