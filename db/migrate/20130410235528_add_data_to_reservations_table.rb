class AddDataToReservationsTable < ActiveRecord::Migration
  def change
    add_column :reservations, :is_waiting, :boolean
    add_column :reservations, :is_texted, :boolean
    add_column :reservations, :is_seated, :boolean
  end
end
