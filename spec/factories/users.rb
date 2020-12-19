# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    email { Faker::Internet.email }
    first_name { Faker::Lorem.word }
    last_name { Faker::Lorem.word }
    password { Faker::Alphanumeric.alphanumeric(number: 10) }
  end
end
