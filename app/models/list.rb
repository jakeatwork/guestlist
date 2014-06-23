# == Schema Information
#
# Table name: lists
#
#  id               :integer          not null, primary key
#  event_id         :integer
#  created_at       :datetime
#  updated_at       :datetime
#  user_id          :integer
#  type_id          :integer
#  number_of_guests :integer
#  checked_in       :boolean
#

class List < ActiveRecord::Base
	belongs_to :event
	belongs_to :venue
	has_many :checklists
	belongs_to :performer 
	has_many :users, through: :checklists
	resourcify
end
