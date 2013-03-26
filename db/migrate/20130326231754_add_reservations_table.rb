class AddReservationsTable < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.date :date
      t.integer :partysize
      t.integer :est_time
      t.integer :wait_time
      t.timestamps
    end
  end
end
