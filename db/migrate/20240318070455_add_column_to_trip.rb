class AddColumnToTrip < ActiveRecord::Migration[7.1]
  def change
    add_column :trips, :image_url, :string
  end
end
