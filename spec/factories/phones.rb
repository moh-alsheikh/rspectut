# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :phone do
    contact_id 1
    phone_type "MyString"
    number "MyString"
  end
end
