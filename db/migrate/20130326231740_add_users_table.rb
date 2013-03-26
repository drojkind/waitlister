class AddUsersTable < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :password_digest
      t.string :phone
      t.integer :num_visits
      t.boolean :is_admin
      t.timestamps
    end
  end
end
