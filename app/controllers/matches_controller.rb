class MatchesController < ApplicationController
  def index
    @user1_trip = Trip.find(params[:trip_id])
    @trip_matches = Trip.where(destination: @user1_trip.destination).excluding(current_user.trips)
    @match = Match.new
  end

  def new
    @match = Match.new
  end

  def create
    @trip = Trip.find(params[:trip])
    existing_match = Match.find_by(user1_id: current_user.id, user2_id: params[:user_selected])
    if existing_match
      existing_match.update(confirmed: true)
    else
      match = Match.new(user1_id: params[:user_selected], user2_id: current_user.id, confirmed: false)
      match.save
    end
    redirect_to trip_matches_path(@trip)
  end

private

    def set_trip
      @trip = Trip.find(params[:trip_id])
    end

end
