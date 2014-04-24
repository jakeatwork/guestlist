# == Schema Information
#
# Table name: guests
#
#  id         :integer          not null, primary key
#  list_id    :string(255)
#  type_id    :integer
#  comments   :text
#  created_at :datetime
#  updated_at :datetime
#  name       :string(255)
#  email      :string(255)
#  phone      :string(255)
#  addons     :integer
#

class Guest < ActiveRecord::Base
	belongs_to :list
	has_many :types
end
