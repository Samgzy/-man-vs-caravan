class AddTitleToCaravan < ActiveRecord::Migration
  def change
    add_column :caravans, :title, :string
  end
end
