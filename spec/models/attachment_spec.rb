require 'rails_helper'

describe Attachment do
  describe "validations" do
    subject { FactoryGirl.build(:attachment) }

    it { should be_valid }
  end
end
