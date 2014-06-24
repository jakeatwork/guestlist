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
