# == Schema Information
#
# Table name: eventguests
#
#  id         :integer          not null, primary key
#  event_id   :integer
#  user_id    :integer
#  type_id    :integer
#  extras     :integer
#  attended   :boolean
#  created_at :datetime
#  updated_at :datetime
#

class Eventguest < ActiveRecord::Base
end
