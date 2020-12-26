# frozen_string_literal: true

FactoryBot.define do
  factory :mark do
    user
    date { Date.current }
    time { Time.current }
    kind { :entrance }
  end
end
