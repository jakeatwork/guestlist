# == Schema Information
#
# Table name: checklists
#
#  user_id    :integer
#  list_id    :integer
#  created_at :datetime
#  updated_at :datetime
#

class Checklist < ActiveRecord::Base
	belongs_to :list
  	belongs_to :user
end
