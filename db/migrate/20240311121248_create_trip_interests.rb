class CreateTripInterests < ActiveRecord::Migration[7.1]
  def change
    create_table :trip_interests do |t|
      t.references :trip, null: false, foreign_key: true
      t.references :interest, null: false, foreign_key: true

      t.timestamps
    end
  end
end
