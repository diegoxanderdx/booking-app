class Refund < ApplicationRecord
  belongs_to :customer
  belongs_to :booking

  def amount_to_be_refunded
    number_of_tickets * booking.event.entrance_fee
  end
end
