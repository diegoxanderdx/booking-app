# == Schema Information
#
# Table name: bookings
#
#  id                    :bigint           not null, primary key
#  number_of_tickets     :integer          not null
#  amount_paid           :float            not null
#  stripe_transaction_id :string           not null
#  customer_id           :bigint           not null
#  event_id              :bigint           not null
#  created_at            :datetime         not null
#  updated_at            :datetime         not null
#  order_number          :string
#
class Booking < ApplicationRecord
  has_many :refunds
  belongs_to :customer
  belongs_to :event

  validates :order_number, presence: true, uniqueness: true


  before_validation :generate_order_number
  after_create :update_event_sit_count

  def update_event_sit_count
    event.update(remaining_sits: event.total_sits - number_of_tickets)
  end

  def generate_order_number
    self.order_number = "BOOKING-#{SecureRandom.hex(5).upcase}"
  end

  def is_refundable?
    event.start_date > Date.today
  end
end
