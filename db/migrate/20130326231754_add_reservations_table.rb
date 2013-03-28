class AddReservationsTable < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.date :date
      t.integer :party_size
      t.time :est_wait
      t.time :act_wait
      t.timestamps
    end
  end
end
