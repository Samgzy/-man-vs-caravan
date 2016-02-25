class AddCoordinatesToCaravans < ActiveRecord::Migration
  def change
    add_column :caravans, :latitude, :float
    add_column :caravans, :longitude, :float
  end
end
