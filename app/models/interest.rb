class Interest < ApplicationRecord
  has_many :trip_interests, dependent: :destroy
  has_many :trips, through: :trip_interests, dependent: :destroy
  validates :name, presence: true

  after_create do
    puts name
  end
end
