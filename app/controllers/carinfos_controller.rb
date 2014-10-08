class CarinfosController < ApplicationController
  def new
	@title = "Car informations"
	@car_info = Carinfo.new
  end

  def index
	@title = "Available Cars"
	@cars = Carinfo.paginate(:page => params[:page])
	
  end

  def show
	@car_info = Carinfo.find(params[:id])
	@ret = @car_info.bookings.build
	@title = @car_info.car_brand
  end


  def create
	@car_info = Carinfo.new(params[:carinfo])
	if @car_info.save
	flash[:success] = "New Car Information Created"
	redirect_to carinformation_path
	# Handle a successful save.
	else
	@title = "Car informations"
	render 'new'
	end
  end

  def edit
	@car_info = Carinfo.find(params[:id])
	@title = "Update Car Informations"
  end	
  def update
	@car_info = Carinfo.find(params[:id])
	if @car_info.update_attributes(params[:carinfo])
	flash[:success] = "Profile updated."
	redirect_to carinformation_path
	else
	@title = "Update Car Informations"
	render 'edit'
	end
  end

  def destroy
	Carinfo.find(params[:id]).destroy
	flash[:success] = "User destroyed."
	redirect_to carinformation_path
  end


end
