class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def new
  end

  def show
    # @users = User.all
    @user = User.find(params[:id])
  end

end
