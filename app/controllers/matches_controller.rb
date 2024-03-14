class MatchesController < ApplicationController

def new
  @match = Match.new
end

def create
  @trip = Trip.find(params[:trip])
  existing_match = Match.find_by(user1_id: current_user.id, user2_id: params[:user_selected])
  if existing_match
    flash[:notice] = "You have a match"
    existing_match.update(confirmed: true)
    #CHATROOOOOOM
  else
    match = Match.new(user1_id: params[:user_selected], user2_id: current_user.id, confirmed: false)
    match.save
  end

  redirect_to trip_matches_path(@trip)
end

def index
  @user1_trip = Trip.find(params[:trip_id])
  # @trip_matches = Trip.includes(:user)
  #                     .where(destination: @user1_trip.destination)
  #                     .excluding(current_user.trips)
  @match = Match.new
  users_already_matched = Match.where(user2: current_user).pluck(:user1_id)
  users_already_matched += Match.where(user1: current_user, confirmed: true).pluck(:user2_id)
  @trip_matches = Trip.joins(:user)
                      .where(destination: @user1_trip.destination)
                      .where.not(user: users_already_matched)
                      .excluding(current_user.trips)
end

@match = Match.new






private

def set_trip
  @trip = Trip.find(params[:trip_id])
end

end
