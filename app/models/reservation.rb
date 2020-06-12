class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :salon

  # 1サロンに対して1ユーザーは1予約しかできない
  validates :user_id, presence: true, uniqueness: {scope: :salon_id}
end
