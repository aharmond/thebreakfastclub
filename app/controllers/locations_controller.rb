class LocationController < ApplicationController
  before_action :set_trip
  before_action :set_location, only: [show:, edit:, update:, destroy:]

  def index
    @locations = current_user.locations
  end

  def show
  end

  def new
    @location = location.new
  end

  def create
    @location = current_user.locations.new(location_params)
    if @location.save
      redirect_to locations_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @location.update(location_params)
      redirect_to locations_path
    else
      render :edit
    end
  end

  def destroy
    @location.destroy
    redirect_to locations_path
  end

  private
    def location_params
      params.require(:location).permit(:name, :days)
    end

    def set_location
      @location = current_user.locations.find(params[:id])
    end

    def set_trip
      @trip = locations.find(@trip.id)     
    end

end