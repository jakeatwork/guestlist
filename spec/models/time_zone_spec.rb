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

require 'spec_helper'

describe TimeZone do
  pending "add some examples to (or delete) #{__FILE__}"
end
