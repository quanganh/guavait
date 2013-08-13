require 'test_helper'

describe ContactMessage do
  before do
    @contact_message = FactoryGirl.create(:contact_message)
  end

  it "must be valid" do
    @contact_message.valid?.must_equal true
  end
end
