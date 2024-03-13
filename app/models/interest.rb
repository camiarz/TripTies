class Interest < ApplicationRecord
  has_many :trip_interests
  has_many :trips, through: :trip_interests
  validates :name,
            inclusion:
            {
              in:
                  %w[
                    Adventure
                    Ecotourism
                    'Cultural Immersion'
                    Cullinary
                    Backpacking
                    'Art and Museums'
                    'Festivals and Events'
                  ]
            }
end
