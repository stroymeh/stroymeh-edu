require 'faker'

FactoryGirl.define do
  factory :page do
    title { Faker::Lorem.word }
    content { Faker::Lorem.sentences }
    tags { Faker::Lorem.words }
  end
end
