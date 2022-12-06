class Event < ApplicationRecord
  validates :name, :description, :start_date, :end_date, :start_time, :end_time, :total_sits, :entrance_fee, presence: true

  validates :total_sits, :entrance_fee, numericality: true

  validates :end_date, comparison: { greater_than_or_equal_to: :start_date, message: 'can not be before start date' }

  def total_duration
    "From #{start_date} at #{start_time} to #{end_date} at #{end_time}"
  end
end
