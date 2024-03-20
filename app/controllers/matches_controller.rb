class MatchesController < ApplicationController
  skip_before_action :verify_authenticity_token, only: :swipe_matches

  def new
    @match = Match.new
  end

  def create
    @trip = Trip.find(params[:trip])
    existing_match = Match.find_by(user1_id: current_user.id, user2_id: params[:user_selected])
    if existing_match
      flash[:notice] = "You have a match"
      existing_match.update(confirmed: true)
      match = existing_match
    else
      match = Match.new(user1_id: params[:user_selected], user2_id: current_user.id, confirmed: false)
      match.save
    end
    Chatroom.create(match: match) if match.confirmed
    redirect_to trip_matches_path(@trip)
  end

  def swipe_matches
    @trip = Trip.find(params[:trip_id])
    existing_match = Match.find_by(user1_id: current_user.id, user2_id: params["match[user1_id]"])
    if existing_match
      flash[:notice] = "You have a match"
      existing_match.update(confirmed: true)
      match = existing_match
    else
      match = Match.new(user1_id: params["match[user1_id]"], user2_id: params["match[user2_id]"])
      match.save
    end
    Chatroom.create(match: match) if match.confirmed
    respond_to do |format|
      msg = { status: 'Match sent', match_id: match.id }
      format.json { render json: msg }
    end
  end

  def index
    @user1_trip = Trip.find(params[:trip_id])
    @match = Match.new
    users_already_matched = Match.where(user2: current_user).pluck(:user1_id)
    users_already_matched += Match.where(user1: current_user, confirmed: true).pluck(:user2_id)
    @trip_matches = Trip.joins(:user)
                        .where(destination: @user1_trip.destination)
                        .where.not(user: users_already_matched)
                        .excluding(current_user.trips)
    # @trip_matches.each do |trip|
    #   puts "Displaying the user for a trip"
    #   puts trip.user
    #   p trip.user.photo.key
    #   if trip.user.photo.key.nil?
    #     puts "User #{trip.user.id} does not have a photo attached"
    #   end
    # end
  end

  def my_matches
    @matches = Match.where(user1: current_user).or(Match.where(user2: current_user))
    @my_matches = @matches.where(confirmed: true)
  end

  private

  def set_trip
    @trip = Trip.find(params[:trip_id])
  end

  def params_match
    params.require(:match).permit(:user1_id, :user2_id, :confirmed)
  end
end
