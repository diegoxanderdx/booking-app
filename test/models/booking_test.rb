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
require "test_helper"

class BookingTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
