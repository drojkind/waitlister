class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def timechart
    r = Reservation.all
    respond_to do |format|
      format.html
      format.js { render :json => r}
    end
  end

  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
  end

end
