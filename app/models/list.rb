# == Schema Information
#
# Table name: lists
#
#  id           :integer          not null, primary key
#  venue_id     :integer
#  event_id     :integer
#  performer_id :integer
#  created_at   :datetime
#  updated_at   :datetime
#  name         :string(255)
#

class List < ActiveRecord::Base
	belongs_to :event
	belongs_to :venue
	belongs_to :performer 
	has_and_belongs_to_many :guests
end
