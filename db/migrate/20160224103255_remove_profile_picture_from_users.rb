class RemoveProfilePictureFromUsers < ActiveRecord::Migration
  def change
     remove_column :users, :profile_picture, :string
  end
end
