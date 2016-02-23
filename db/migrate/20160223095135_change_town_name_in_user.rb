class ChangeTownNameInUser < ActiveRecord::Migration
  def change
    rename_column :users, :town, :country
  end
end
