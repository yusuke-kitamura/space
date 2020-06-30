class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable
         
  has_many :favorites, dependent: :destroy
  has_many :reservations, dependent: :destroy
  has_many :salons, through: :favorites
  has_many :salons, through: :reservations

  validates :name, presence: true
  validates :kana_name, presence: true
  validates :email, presence: true
  validates :phone_number, presence: true
end
