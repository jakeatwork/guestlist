# == Schema Information
#
# Table name: performers
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Performer < ActiveRecord::Base
end
