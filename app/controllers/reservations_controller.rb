class ReservationsController < ApplicationController

  def index
    @reservations = @auth.reservations
    @reservationswaiting= @auth.reservations.where(:is_seated => nil)
    #@reservationswaiting= Reservation.waiting  why doesn't this work--- from scope?
    @reservationstexted= @auth.reservations.where(:is_texted => true)
    @reservationsseated= @auth.reservations.where(:is_seated => true)
    @reservation = Reservation.new
  end

  def new
    @reservation = Reservation.new
    @reservations = Reservation.all
  end

  def create
    @reservation = Reservation.create(params[:reservation])
    @reservation.is_waiting = true
    @auth.reservations << @reservation
    @auth.save
    @reservations = @auth.reservations
    @reservationswaiting= @auth.reservations.where(:is_waiting => true)
  end

  def sendtext
    name = params[:first]
    body = params[:body]
    reservation = Reservation.where(:name => name).first
    reservation.is_texted = true
    reservation.is_waiting = false
    reservation.act_wait= params[:now].to_s[10..12].to_i
    reservation.save
    client = Twilio::REST::Client.new(ENV['TW_SID'], ENV['TW_TOK'])
    client.account.sms.messages.create(:from => '17324126143', :to => reservation.phone, :body => body)
  end

end