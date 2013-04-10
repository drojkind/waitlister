class AddDataToUsersTable < ActiveRecord::Migration
  def change
    add_column :users, :is_waiting, :boolean
    add_column :users, :is_texted, :boolean
    add_column :users, :is_seated, :boolean
  end
end
