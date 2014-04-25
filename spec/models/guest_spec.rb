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

require 'spec_helper'

describe Guest do
  pending "add some examples to (or delete) #{__FILE__}"
end
