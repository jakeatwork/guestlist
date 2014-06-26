# == Schema Information
#
# Table name: time_zones
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  code       :string(255)
#  location   :text
#  created_at :datetime
#  updated_at :datetime
#

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :time_zone do
    name "MyString"
    code "MyString"
    location "MyText"
  end
end
