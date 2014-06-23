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

require 'spec_helper'

describe List do
  pending "add some examples to (or delete) #{__FILE__}"
end
