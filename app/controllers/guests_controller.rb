class GuestsController < ApplicationController
  def index
    @guests = Guest.all
  end
  def sendtext
    name = params[:first]
    body = params[:body]
    guest = Guest.where(:name => name).first
    client = Twilio::REST::Client.new(ENV['TW_SID'], ENV['TW_TOK'])
    client.account.sms.messages.create(:from => '+17186739417', :to => guest.phone, :body => body)
    redirect_to(reservations_path)
  end
end