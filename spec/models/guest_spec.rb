# == Schema Information
#
# Table name: guests
#
#  id         :integer          not null, primary key
#  event_id   :string(255)
#  type_id    :integer
#  comments   :text
#  created_at :datetime
#  updated_at :datetime
#

require 'spec_helper'

describe Guest do
  pending "add some examples to (or delete) #{__FILE__}"
end