# == Schema Information
#
# Table name: eventguests
#
#  id            :integer          not null, primary key
#  event_id      :integer
#  user_id       :integer
#  type_id       :integer
#  extras        :integer
#  attended      :boolean
#  created_at    :datetime
#  updated_at    :datetime
#  business_user :integer
#  notes         :text
#

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :eventguest do
    event_id 1
    user_id 1
    type_id 1
    extras 1
    attended false
  end
end
