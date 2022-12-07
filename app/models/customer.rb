# == Schema Information
#
# Table name: customers
#
#  id                 :bigint           not null, primary key
#  full_name          :string           not null
#  email              :string           not null
#  contact_number     :integer          not null
#  stripe_customer_id :string           not null
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#
class Customer < ApplicationRecord
  has_many :bookings
  has_many :events, through: :bookings

  validates :full_name, :contact_number, :stripe_customer_id, presence: true
  validates :email, presence: true, uniqueness: true
end
