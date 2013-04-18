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

class Reservation < ActiveRecord::Base
  attr_accessible :name, :phone, :date, :day, :party_size, :est_wait, :act_wait, :is_waiting, :is_texted, :is_seated
  scope :waiting, where(:is_texted => false)
  scope :texted, where(:is_texted => true).where(:is_seated => false)
  scope :seated, where(:is_seated => true)
  belongs_to :user

  def self.avg_est_wait(user, date)
    reservations = user.reservations.where(:date => date)
    (reservations.map(&:est_wait).reduce(:+))/(reservations.count)
  end

  def self.avg_act_wait(user, date)
    reservations = user.reservations.where(:date => date)
    (reservations.map(&:act_wait).reduce(:+))/(reservations.count)
  end

end
