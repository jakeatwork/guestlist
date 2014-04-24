# == Schema Information
#
# Table name: guests_lists
#
#  guest_id   :integer
#  list_id    :integer
#  created_at :datetime
#  updated_at :datetime
#

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :guests_list do
    guest_id 1
    list_id 1
  end
end
