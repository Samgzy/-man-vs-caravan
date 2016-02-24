class PhotosToCaravans < ActiveRecord::Migration
  def change
    add_column :caravans, :photo, :string
  end
end
