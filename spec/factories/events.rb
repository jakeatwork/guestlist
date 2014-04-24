# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :event do
    name "MyString"
    date "2014-04-24 11:25:26"
    venue_id 1
    performer_id 1
  end
end
