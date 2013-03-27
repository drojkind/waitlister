class Reservation < ActiveRecord::Base
attr_accessible :date, :partysize, :est_time, :wait_time
belongs_to :user
belongs_to :restaurant
end
