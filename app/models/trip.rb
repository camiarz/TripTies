class Trip < ApplicationRecord
  belongs_to :user
  has_many :trip_interests, dependent: :destroy
  has_many :interests, through: :trip_interests, dependent: :destroy
  validates :destination, :arrival, :departure, presence: true
end
