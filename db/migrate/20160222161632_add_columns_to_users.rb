class AddColumnsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :description, :text
    add_column :users, :street, :string
    add_column :users, :city, :string
    add_column :users, :town, :string
    add_column :users, :zip_code, :string
    add_column :users, :profile_picture, :string
    add_column :users, :gender, :string
  end
end
