class AddReservationsTable < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.string :name
      t.string :phone
      t.string :date
      t.string :day
      t.integer :party_size, :default => false
      t.integer :est_wait, :default => false
      t.integer :act_wait, :default => false
      t.integer :user_id
      t.timestamps
    end
  end
end
