class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :favorites, dependent: :destroy
  has_many :salons, through: :favorites　
  has_many :reservation, dependent: :destroy

  validates :name, presence: true
  validates :kana_name, presence: true
  validates :email, presence: true
  validates :postal_code, presence: true
  validates :address, presence: true
end
