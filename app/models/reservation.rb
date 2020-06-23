class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :salon

  # 1ユーザーは1サロンに対して1予約しかできない
  validates :date, presence: true
  validates :user_id, presence: true, uniqueness: {scope: :salon_id}
end
