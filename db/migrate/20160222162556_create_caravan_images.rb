class CreateCaravanImages < ActiveRecord::Migration
  def change
    create_table :caravan_images do |t|
      t.string :url
      t.references :caravan, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
