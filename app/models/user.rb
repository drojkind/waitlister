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

  def waiting_total_people
    (self.reservations.where(:is_waiting => true).map(&:party_size).reduce(:+)) + (self.reservations.where(:is_texted => true).map(&:party_size).reduce(:+))
  end

  def waiting_total_parties
    (self.reservations.where(:is_waiting => true).count) + (self.reservations.where(:is_texted => true).count)
  end

  def seated_total_people
    self.reservations.where(:is_seated => true).map(&:party_size).reduce(:+)
  end

  def seated_total_parties
    self.reservations.where(:is_seated => true).count
  end

  def date_graph
    dates = self.reservations.map(&:date).uniq
    dates.map{ |date| {date: date, avg_est_wait: Reservation.avg_est_wait(self, date), avg_act_wait: Reservation.avg_act_wait(self, date)} }
  end

  def avg_wait_four
    party = self.reservations.where(:party_size => 1..4)
    times = party.map(&:act_wait).reduce(:+)
    if party.present?
      times / party.count
    else
      return 0
    end
  end

  def avg_wait_eight
    party = self.reservations.where(:party_size => 5..8)
    times = party.map(&:act_wait).reduce(:+)
    if party.present?
      times / party.count
    else
      return 0
    end
  end
    # times = self.reservations.where(:party_size => 5..8).map(&:act_wait).reduce(:+)
    # times / (self.reservations.where(:party_size => 5..8).count)


  def avg_wait_big
    bigparty = self.reservations.where("party_size > ?", 9)
    if bigparty.present?
      bigparty.map(&:act_wait).reduce(:+)/(reservations.count)
    else
      return 0
    end
  end

end

#User.all is like a scope with no requirements
#to call this, User.waiting
