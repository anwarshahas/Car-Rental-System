class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.integer :user_id
      t.integer :carinfo_id
      t.date :pick_up
      t.date :return

      t.timestamps
    end
  end
#add_index :bookings, :user_id
end
