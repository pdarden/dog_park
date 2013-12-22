# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :owner do
    first_name "John"
    last_name "Smith"
    sequence(:email) {|n| "#{first_name}#{n}@example.com" }
  end
end
