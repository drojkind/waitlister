# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  email           :string(255)
#  password_digest :string(255)
#  phone           :string(255)
#  num_visits      :integer
#  is_admin        :boolean
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class User < ActiveRecord::Base
attr_accessible :email, :phone, :password, :password_confirmation, :num_visits, :is_admin
has_many :reservations
has_and_belongs_to_many :restaurants
end
