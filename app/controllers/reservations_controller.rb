class ReservationsController < ApplicationController

  def index
    @reservations = Reservation.all
  end

  def new
    @reservation = Reservation.new
    @reservations = Reservation.all
  end

  def create
    @reservation = Reservation.create(params[:reservation])
  end

  def sendtext
    name = params[:first]
    body = params[:body]
    reservation = reservation.where(:name => name).first
    client = Twilio::REST::Client.new(ENV['TW_SID'], ENV['TW_TOK'])
    client.account.sms.messages.create(:from => '+17186739417', :to => reservation.phone, :body => body)
    redirect_to(reservations_path)
  end
end