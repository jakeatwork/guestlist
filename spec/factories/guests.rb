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

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :guest do
    event_id "MyString"
    type_id 1
    comments "MyText"
  end
end
