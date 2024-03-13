class TripsController < ApplicationController
  before_action :set_trip, only: %i[edit destroy]
  def index
    @trips = Trip.all
  end

  def new
    @trip = Trip.new
    @user = current_user
    # @trip_interests = TripInterest.find(params[:interest_id])
    @interests = Interest.all
  end

  def create
    @trip = Trip.new(trip_params)
    @trip.user = current_user
    @interest_id = params[:trip][:interests].select{|element| element!="" }
    # raise
    if @trip.save
      @trip_interest = Interest.where(params[:trip_interest])
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
