# == Schema Information
#
# Table name: guests
#
#  id         :integer          not null, primary key
#  list_id    :string(255)
#  type_id    :integer
#  comments   :text
#  created_at :datetime
#  updated_at :datetime
#

class Guest < ActiveRecord::Base
	has_many :lists
	has_many :types
end
