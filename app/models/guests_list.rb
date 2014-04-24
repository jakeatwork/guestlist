# == Schema Information
#
# Table name: guests_lists
#
#  id         :integer          not null, primary key
#  guest_id   :integer
#  list_id    :integer
#  created_at :datetime
#  updated_at :datetime
#

class GuestsList < ActiveRecord::Base
end
