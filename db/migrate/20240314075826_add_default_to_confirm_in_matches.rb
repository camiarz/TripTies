class AddDefaultToConfirmInMatches < ActiveRecord::Migration[7.1]
  def change
    change_column :matches, :confirmed, :boolean, default: false
  end
end
