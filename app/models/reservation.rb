class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :salon

  validates :date, presence: true
  # 1ユーザーは1サロンに対して1予約しかできない
  # validates :user_id, presence: true, uniqueness: {scope: :salon_id}
end
