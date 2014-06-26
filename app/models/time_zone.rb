# == Schema Information
#
# Table name: time_zones
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  code       :string(255)
#  location   :text
#  created_at :datetime
#  updated_at :datetime
#

class TimeZone < ActiveRecord::Base
end
