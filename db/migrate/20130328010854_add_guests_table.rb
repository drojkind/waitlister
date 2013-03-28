class AddGuestsTable < ActiveRecord::Migration
  def change
    create_table :guests do |t|
      t.string :name
      t.string :phone
      t.timestamps
    end
  end
end
