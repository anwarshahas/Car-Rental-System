class AddRegistrationUniquenessIndex < ActiveRecord::Migration
  def self.up
	add_index :carinfos, :registration, :unique => true
  end

  def self.down
	remove_index :carinfos, :registration
  end
end
