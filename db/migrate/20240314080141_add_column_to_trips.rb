class AddColumnToTrips < ActiveRecord::Migration[7.1]
  def change
    add_column :trips, :description, :string
  end
end
