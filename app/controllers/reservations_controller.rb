class ReservationsController < ApplicationController

  def index
    @reservations = Reservation.all
    @reservationswaiting= Reservation.where(:is_waiting => true)
    #@reservationswaiting= Reservation.waiting  why doesn't this work--- from scope?
    @reservationstexted= Reservation.where(:is_texted => true)
    @reservationsseated= Reservation.where(:is_seated => true)
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
    reservation.is_texted = true
    reservation.is_waiting = false
    reservation.save
    client = Twilio::REST::Client.new(ENV['TW_SID'], ENV['TW_TOK'])
    client.account.sms.messages.create(:from => '17324126143', :to => reservation.phone, :body => body)
  end

end