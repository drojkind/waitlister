class User < ActiveRecord::Base
attr_accessible :email, :phone, :password, :password_confirmation, :num_visits, :is_admin
has_many :reservations
end