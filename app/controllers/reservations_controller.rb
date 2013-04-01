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
    @reservations = Reservation.all
  end

  def sendtext
    name = params[:first]
    body = params[:body]
    reservation = Reservation.where(:name => name).first
    client = Twilio::REST::Client.new(ENV['TW_SID'], ENV['TW_TOK'])
    client.account.sms.messages.create(:from => '17324126143', :to => reservation.phone, :body => body)
    # render :js => 'sendtext', :test => 'heyo'
  end

end