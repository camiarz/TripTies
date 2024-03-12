class Trip < ApplicationRecord
  belongs_to :user
  validates :destination, :arrival, :departure, presence: true
end
