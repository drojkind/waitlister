# == Schema Information
#
# Table name: reservations
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  phone      :string(255)
#  date       :string(255)
#  day        :string(255)
#  party_size :integer          default(0)
#  est_wait   :integer          default(0)
#  act_wait   :integer          default(0)
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  is_waiting :boolean
#  is_texted  :boolean
#  is_seated  :boolean
#

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
