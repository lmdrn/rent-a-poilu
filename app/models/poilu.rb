class Poilu < ApplicationRecord

  LOCATIONS = ['Lausanne','Renens','Genève','Bern','Zürich','Neuchâtel','Fribourg']

  belongs_to :user
  has_many :bookings
  has_many :users, through: :bookings
  has_one_attached :photo
end
