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

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :list do
    venue_id 1
    event_id 1
    performer_id 1
  end
end
