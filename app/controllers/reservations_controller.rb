class ReservationsController < ApplicationController
  def index
    @reservations = Reservation.all
  end
  def new
    @reservation = Reservation.new
    @guest = Guest.new
  end
  def create
    @reservation = Reservation.create(params[:reservation])
  end
end