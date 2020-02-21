class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :poilu

  validates :start_date, presence: true
  validates :end_date, presence: true
  validate :end_date_after_start_date

  private

  def end_date_after_start_date
    if end_date < start_date
      errors.add(:end_date, "la date de fin ne doit pas être antérieur à la date de début")
    end
  end
end
