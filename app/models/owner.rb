class Owner < ApplicationRecord
	
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :salons, dependent: :destroy

  validates :name, presence: true
  validates :email, presence: true
end
