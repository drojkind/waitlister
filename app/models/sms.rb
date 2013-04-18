# == Schema Information
#
# Table name: sms
#
#  id               :integer          not null, primary key
#  content_received :string(255)
#  incoming_number  :string(255)
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class Sms < ActiveRecord::Base
  attr_accessible :content_received, :incoming_number
end
