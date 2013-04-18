class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def timechart
    r = @auth.date_graph
    respond_to do |format|
      format.html
      format.js { render :json => r}
    end
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(params[:user])
  end

  def show
    @user = User.find(params[:id])
  end

  def waiting
    @reservationswaiting = @auth.reservations.where(:is_seated => nil)
  end

  def seated
    @reservationsseated = @auth.reservations.where(:is_seated => true)
  end

end
