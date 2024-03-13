class Trip < ApplicationRecord
  belongs_to :user
  has_many :trip_interests
  has_many :interests, through: :trip_interests
  validates :destination, :arrival, :departure, presence: true
end
