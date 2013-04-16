require 'spec_helper'

describe Reservation do
  let(:reservation) {Reservation.create(name: 'stephen', phone: '5164747688', date: '2013-03-22', day: 'fri', party_size: 2, est_wait: 20, is_waiting: true)}
  let(:user) {User.create(:name => "janehotel", :email => "janehotel@gmail.com", :password => "x", :password_confirmation => "x")}

  describe '.new' do
    it 'creates an instance of Reservation' do
      reservation = Reservation.new
      expect(reservation).to be_an_instance_of(Reservation)
    end
  end
  describe '.create' do
    it 'has an id' do
      expect(reservation.id).to_not be nil
    end
  end

end