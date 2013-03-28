# == Schema Information
#
# Table name: reservations
#
#  id         :integer          not null, primary key
#  date       :date
#  party_size :integer
#  est_wait   :time
#  act_wait   :time
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Reservation < ActiveRecord::Base
  attr_accessible :date, :party_size, :est_wait, :act_wait
  belongs_to :guest
  belongs_to :user

end
