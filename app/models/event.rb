# == Schema Information
#
# Table name: events
#
#  id             :bigint           not null, primary key
#  name           :string           not null
#  description    :text             not null
#  start_date     :date             not null
#  end_date       :date             not null
#  start_time     :string           not null
#  end_time       :string           not null
#  total_sits     :integer          not null
#  remaining_sits :integer          not null
#  entrance_fee   :bigint           not null
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  slug           :string
#
class Event < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :slugged

  has_many :bookings
  has_many :customers, through: :bookings

  validates :description, :start_date, :end_date, :start_time, :end_time, presence: true
  validates :total_sits, :entrance_fee, presence: true, numericality: true
  validates :end_date, comparison: { greater_than_or_equal_to: :start_date, message: 'can not be before start date' }
  validates :name, presence: true, uniqueness: true

  scope :upcoming_events, -> { where('start_date > ?', Date.today) }

  scope :past_events, -> { where('end_date < ?', Date.today) }

  def total_duration
    "From #{start_date} at #{start_time} to #{end_date} at #{end_time}"
  end

  def is_upcoming_event?
   start_date > Date.today
  end

end
