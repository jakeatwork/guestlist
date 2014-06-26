# == Schema Information
#
# Table name: venues
#
#  id           :integer          not null, primary key
#  name         :string(255)
#  created_at   :datetime
#  updated_at   :datetime
#  time_zone_id :string(255)
#

class Venue < ActiveRecord::Base
	has_many :events
end
