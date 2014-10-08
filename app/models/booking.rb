class Booking < ActiveRecord::Base
attr_accessible :mail , :registration, :pick_up, :return
validates :pick_up, :presence => true, :length => { :maximum => 50 }
validates :return, :presence => true, :length => { :maximum => 50 }
belongs_to :user
belongs_to :carinfo
end
