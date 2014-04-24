# == Schema Information
#
# Table name: lists
#
#  id           :integer          not null, primary key
#  venue_id     :integer
#  event_id     :integer
#  performer_id :integer
#  created_at   :datetime
#  updated_at   :datetime
#  name         :string(255)
#

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :list do
    venue_id 1
    event_id 1
    performer_id 1
  end
end
