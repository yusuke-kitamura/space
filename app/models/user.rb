class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
  has_many :favorites, dependent: :destroy
  has_many :salons, through: :favorites
  has_many :reservation, dependent: :destroy

  validates :name, presence: true
  validates :kana_name, presence: true
  validates :email, presence: true
end
