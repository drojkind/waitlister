class ReservationsController < ApplicationController
  def index
    @reservations = Reservation.all
    @guests = Guest.all
  end
  def new
    @reservation = Reservation.new
    @guest = Guest.new
    @guests = Guest.all
  end
  def create
    @reservation = Reservation.create(params[:reservation])
  end
end