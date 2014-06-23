# == Schema Information
#
# Table name: events
#
#  id           :integer          not null, primary key
#  name         :string(255)
#  date         :datetime
#  venue_id     :integer
#  performer_id :integer
#  created_at   :datetime
#  updated_at   :datetime
#

class Event < ActiveRecord::Base
	has_one :venue
	has_many :users, through: :lists
	has_many :lists
	has_many :performers # needs to be has_many at some point
end
