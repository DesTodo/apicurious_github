class ChangeUserAttributes < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :name, :string
    add_column :users, :username, :string
    add_column :users, :profile_picture, :string
    remove_column :users, :screen_name, :string
  end
end
