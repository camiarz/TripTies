class Interest < ApplicationRecord
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
