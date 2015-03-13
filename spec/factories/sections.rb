require 'faker'

FactoryGirl.define do
  factory :section do
    title { Faker::Lorem.word }
    description { Faker::Lorem.sentences }
  end
end
