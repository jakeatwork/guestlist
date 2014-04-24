# == Schema Information
#
# Table name: events
#
#  id           :integer          not null, primary key
#  name         :string(255)
#  date         :datetime
#  venue_id     :integer
#  performer_id :integer
#  created_at   :datetime
#  updated_at   :datetime
#

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :event do
    name "MyString"
    date "2014-04-24 11:25:26"
    venue_id 1
    performer_id 1
  end
end
