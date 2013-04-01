class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def timechart
    r = Reservation.all
    @data = r.map{ |i| {:est_wait => i.est_wait, :act_wait => i.act_wait} }

    respond_to do |format|
      format.html
      format.js { render :json => @data}
    end
  end

  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
  end

end
