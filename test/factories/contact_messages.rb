# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :contact_message do
    name { Faker::Name.name }
    email { Faker::Internet.email }
    phone { Faker::PhoneNumberAU.home_work_phone_number }
    message { Faker::Lorem.sentence }
  end
end
