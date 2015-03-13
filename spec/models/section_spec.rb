require 'rails_helper'

describe Section do
  describe "validations" do
    subject { FactoryGirl.build(:section) }

    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:description) }
    it { should be_valid }
  end

  describe "has_many associations" do
    it { should have_many :pages }
  end
end
