class LocationsController < ApplicationController
  before_action :set_trip, except: [:show, :edit, :update, :destroy]
  before_action :set_location, only: [:show, :destroy, :edit, :update]
  before_action :set_trip_alternate, only: [:destroy]
  
  def index
    @locations = @trip.locations
  end
  
  def show
    @address = Address.find_by location_id: @location.id
  end
  
  def new
    @location = @trip.locations.new
  end
  
  def create
    @location = @trip.locations.new(location_params)
    if @location.save
      redirect_to new_location_address_path(@location)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @address = Address.find_by location_id: @location.id
    if @location.update(location_params)
      redirect_to edit_location_address_path(@location, @address)
    else
      render :edit
    end
  end

  def destroy
    @location.destroy
    redirect_to trip_path(@trip)
  end

  private
    def location_params
      params.require(:location).permit(:name, :days)
    end

    def set_location
      @location = Location.find(params[:id])
    end

    def set_trip
      @trip = Trip.find(params[:trip_id])     
    end

    def set_trip_alternate
      @trip = Trip.find_by id: @location.trip_id
    end
end