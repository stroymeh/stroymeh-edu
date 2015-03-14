require 'faker'

FactoryGirl.define do
  factory :page do
    title { Faker::Lorem.word }
    content { Faker::Lorem.sentences }
    tags { Faker::Lorem.words }

    association :section, :factory => :section
  end
end
