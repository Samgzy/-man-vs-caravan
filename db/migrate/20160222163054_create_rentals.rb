class CreateRentals < ActiveRecord::Migration
  def change
    create_table :rentals do |t|
      t.integer :price
      t.date :start_date
      t.date :end_date
      t.boolean :validated
      t.references :caravan, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
