class TripsController < ApplicationController
  before_action :set_trip, only: %i[edit destroy]
  def index
    # @trips = current_user.trips
    @trips = Trip.includes(:interest).where(user: current_user)
  end

  def new
    @trip = Trip.new
    @user = current_user
    @interests = Interest.all
  end

  def create
    @trip.user = current_user
    @interest_ids = params[:trip][:interests].select{|element| element!="" }

    if @trip.save
      @interest_ids.each do |interest_id|
        TripInterest.create(trip: @trip, interest_id: interest_id)
      end
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
    TripInterest.where(trip_id: @trip.id).destroy_all
    @trip.destroy
    redirect_to trips_path(current_user), status: :see_other
  end

  private

  def trip_params
    params.required(:trip).permit(:destination, :arrival, :departure, :interests)
  end

  def set_trip
    @trip = Trip.find(params[:id])
  end
end
