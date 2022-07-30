class Flat < ApplicationRecord

  validates :name, presence: true
  validates :address, presence: true
  validates :description, presence: true, length: { minimum: 50, too_short: 'Please write a bit more! (At least 50 characters)', maximum: 500, too_long: "Sorry, that's a bit too long. Please write less than 500 characters." }
  validates :price_per_night, presence: true
  validates :number_of_guests, presence: true


end
