class CreateMatches < ActiveRecord::Migration[7.1]
  def change
    create_table :matches do |t|
      t.references :user1, foreign_key: { to_table: :users}, null: false
      t.references :user2, foreign_key: { to_table: :users}, null: false
      t.boolean :confirmed

      t.timestamps
    end
  end
end
