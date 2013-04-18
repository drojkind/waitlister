class SmsController < ApplicationController
  skip_before_filter :verify_authenticity_token

  def create
    Sms.create(content_received: params['Body'], incoming_number: params['From'])
    render :nothing => true
  end

  # def receive
  #   message_body = params["Body"]
  #   from_number = params["From"]
  #   r1 = Reservation.where(:phone => from_number).first
  #   r1.comment.last = message_body
  #   r1.save
  #   render :nothing => true
  # end
end