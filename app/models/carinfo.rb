class Carinfo < ActiveRecord::Base
attr_accessible :car_brand , :brand_model, :registration, :passenger_count, :rate
validates :car_brand, :presence => true, :length => { :maximum => 50 }
validates :brand_model, :presence => true, :length => { :maximum => 50 }
validates :registration, :presence => true, :length => { :maximum => 20 }, :uniqueness => { :case_sensitive => false }
validates :passenger_count, :presence => true
validates :rate, :presence => true
has_many :bookings
end
