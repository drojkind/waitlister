class CreateSms < ActiveRecord::Migration
  def change
    create_table :sms do |t|
      t.string :content_received
      t.string :incoming_number

      t.timestamps
    end
  end
end
