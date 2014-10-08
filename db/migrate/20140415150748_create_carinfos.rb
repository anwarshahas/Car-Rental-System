class CreateCarinfos < ActiveRecord::Migration
  def self.up
    create_table :carinfos do |t|
      t.string :car_brand
      t.string :brand_model
      t.string :registration
      t.integer :passenger_count
      t.integer :rate

      t.timestamps
    end
  end

  def self.down
    drop_table :carinfos
  end


end
