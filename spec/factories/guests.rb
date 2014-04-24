# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :guest do
    event_id "MyString"
    type_id 1
    comments "MyText"
  end
end
