# == Schema Information
#
# Table name: restaurants
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  num_seats  :integer
#  address    :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Restaurant < ActiveRecord::Base
attr_accessible :name, :num_seats, :address
has_and_belongs_to_many :users
has_many :reservations
end


