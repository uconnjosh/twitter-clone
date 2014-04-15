# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    email "fake@fake.com"
    handle "faker"
    password_digest "MyString"

  end
end
