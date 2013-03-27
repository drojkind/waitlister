class Restaurant < ActiveRecord::Base
attr_accessible :name, :num_seats, :address
has_many_and_belongs_to_many :users
has_many :reservations
end


