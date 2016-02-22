class CreateCaravans < ActiveRecord::Migration
  def change
    create_table :caravans do |t|
      t.string :street
      t.string :city
      t.string :zip_code
      t.string :country
      t.integer :capacity
      t.integer :price
      t.boolean :tv
      t.boolean :coffee_machine
      t.boolean :wifi
      t.boolean :shower
      t.boolean :kitchen
      t.text :description
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
