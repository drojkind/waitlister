# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :string(255)
#  password_digest :string(255)
#  email           :string(255)
#  address         :text
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

require 'spec_helper'

describe User do
  let(:user) {User.create(:name => "janehotel", :email => "janehotel@gmail.com", :password => "x", :password_confirmation => "x")}
  let(:reservation) {Reservation.create(name: 'stephen', phone: '5164747688', date: '2013-03-22', day: 'fri', party_size: 2, est_wait: 20, is_waiting: true)}

  describe '.new' do
    it 'creates an instance of User' do
      user = User.new
      expect(user).to be_an_instance_of(User)
    end
  end
  describe '.create' do
    it 'has an id' do
      expect(user.id).to_not be nil
    end
  end
  describe '#users' do
    it 'has reservations' do
      user = User.new
      reservation = Reservation.new
      user.reservations << reservation
      expect(user.reservations.first).to be_an_instance_of(Reservation)
    end
  end
  describe '#reservation' do
    it 'belongs to a user' do
      user = User.new
      reservation = Reservation.new
      user.reservations << reservation
      expect(user.reservations.first).to eq reservation
    end
  end

end
