class ReservationsController < ApplicationController

  def index
    @reservations = Reservation.all
  end

  def new
    @reservation = Reservation.new
    @reservations = Reservation.all
  end

  def create
    @reservations = Reservation.all
    @reservation = Reservation.create(params[:reservation])
  end

  def sendtext
    phone = params[:phone]
    # name = params[:first]
    body = params[:body]
    # reservation = Reservation.where(:phone => phone).first
    client = Twilio::REST::Client.new(ENV['TW_SID'], ENV['TW_TOK'])
    client.account.sms.messages.create(:from => '+17186739417', :to => phone, :body => body)
    redirect_to(reservations_path)
  end
end