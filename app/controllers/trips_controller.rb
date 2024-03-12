class TripsController < ApplicationController

  def index
    @trips = Trip.all
  end

  def new
    @trip = Trip.new
  end

  def create
    @trip = Trip.new(trip_params)
    @trip.user = current_user
    if @trip.save
      redirect_to trips_path(@trip)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @trip = Trip.find(params[:id])
  end

  def update
    @trip = Trip.find(params[:id])
    if @trip.update(trip_params)
      redirect_to trips_path, notice: 'Trip was successfully updated.'
    else
      render :edit
    end

  end

  def destroy
    @trip.destroy
  end

  private

  def trip_params
    params.required(:trip).permit(:destination, :arrival, :departure)
  end
end
