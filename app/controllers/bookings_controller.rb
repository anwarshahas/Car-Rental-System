class BookingsController < ApplicationController
  def new
	@title = "Booking"
#	@booking = Booking.new
	@booking = current_user.bookings.build

  end

  def create
#@micropost = current_user.microposts.build(params[:micropost])
	@booking = current_user.bookings.build(params[:booking])
	if @booking.save
	flash[:success] = "Car Rented"
	redirect_to root_path
	# Handle a successful save.
	else
	@title = "Booking"
	render 'new'
	end
  end


end
