class DonationLocal < ApplicationRecord
  validates :name, :donation_type, :street, :neighborhood, :city, :state, :phone, presence: true
end
