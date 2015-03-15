FactoryGirl.define do
  factory :attachment do
    file { File.new("#{Rails.root}/spec/support/fixtures/rails.png") }

    association :page, :factory => :page
  end
end
