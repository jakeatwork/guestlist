# == Schema Information
#
# Table name: guests
#
#  id         :integer          not null, primary key
#  type_id    :integer
#  comments   :text
#  created_at :datetime
#  updated_at :datetime
#  name       :string(255)
#  email      :string(255)
#  phone      :string(255)
#  addons     :integer
#

class Guest < ActiveRecord::Base
	has_many :lists, through: :checklists
	has_many :checklists
	belongs_to :type
	resourcify
end
