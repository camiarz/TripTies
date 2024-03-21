class UsersController < ApplicationController
  before_action :set_user, only: %i[show edit]
  def show
    @joined = @user.created_at.strftime('%m/%d/%Y')
  end

  def edit
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to @user
    else
      render :edit
    end
  end

  def set_user
    @user = User.find(params[:id])
  end
  def user_params
    params.required(:user).permit(:photo, :first_name, :last_name, :age, :bio)
  end
end
