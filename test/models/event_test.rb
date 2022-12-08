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
require "test_helper"

class EventTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
