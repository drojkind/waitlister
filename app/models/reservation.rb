# == Schema Information
#
# Table name: reservations
#
#  id         :integer          not null, primary key
#  date       :date
#  partysize  :integer
#  est_time   :integer
#  wait_time  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Reservation < ActiveRecord::Base
attr_accessible :date, :partysize, :est_time, :wait_time
belongs_to :user
belongs_to :restaurant
end
