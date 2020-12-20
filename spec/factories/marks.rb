# frozen_string_literal: true

FactoryBot.define do
  factory :mark do
    user
    marked_at { Time.current }
  end
end
