class MatchesController < ApplicationController

def new
  @match = Match.new
end

def create


end

def index
  user1_trip = Trip.find(params[:trip_id])
  @trip_matches = Trip.where(destination: user1_trip.destination)

  # @users = User.where(trips: { destination: user1_trip.destination })


end

private

def set_trip
  @trip = Trip.find(params[:trip_id])
end

end