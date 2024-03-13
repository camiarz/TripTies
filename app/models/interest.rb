class Interest < ApplicationRecord
  has_many :trip_interests
  has_many :trips, through: :trip_interests
  validates :name, presence: true

  after_create do
    puts name
  end
end
