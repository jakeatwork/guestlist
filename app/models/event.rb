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
	belongs_to :venue
	has_one :list
	belongs_to :performer # needs to be has_many at some point
end
