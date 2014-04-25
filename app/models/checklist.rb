# == Schema Information
#
# Table name: checklists
#
#  guest_id   :integer
#  list_id    :integer
#  created_at :datetime
#  updated_at :datetime
#

class Checklist < ActiveRecord::Base
	belongs_to :list
  	belongs_to :guest
end
