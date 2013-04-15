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

  def waiting
    @reservationswaiting= @auth.reservations.where(:is_seated => nil)
  end

  def seated
    @reservationsseated= Reservation.where(:is_seated => true)
  end

end
