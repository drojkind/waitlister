class HomeController < ApplicationController
  def index
    @users = User.all
    # @user = User.find(params[:id])
  end

end