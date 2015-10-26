require 'faker'

FactoryGirl.define do
  factory :page do
    title { Faker::Lorem.word }
    content { Faker::Lorem.sentences }

    association :section, :factory => :section
  end
end
