# == Schema Information
#
# Table name: reservations
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  phone      :string(255)
#  date       :string(255)
#  day        :string(255)
#  party_size :integer
#  est_wait   :integer
#  act_wait   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Reservation < ActiveRecord::Base
  attr_accessible :name, :phone, :date, :day, :party_size, :est_wait, :act_wait
  belongs_to :user

end
