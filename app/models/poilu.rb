class Poilu < ApplicationRecord
  LOCATIONS = ['Lausanne','Renens','Genève','Bern','Zürich','Neuchâtel','Fribourg']

  belongs_to :user
  has_many :bookings
  has_many :users, through: :bookings
  has_one_attached :photo
  validates :name, presence: true, uniqueness: true
  validates :description, presence: true
  validates :location, presence: true
  validates :photo, presence: true
end
