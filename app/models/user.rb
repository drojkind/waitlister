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

class User < ActiveRecord::Base
  attr_accessible :name, :password, :password_confirmation, :email, :address
  has_many :reservations
  has_secure_password

  def total_people
    Reservation.all.map(&:party_size).reduce(:+)
  end

  def total_parties
    Reservation.all.count
  end

end

#User.all is like a scope with no requirements
#to call this, User.waiting
