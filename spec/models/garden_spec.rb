require 'spec_helper'

describe Garden do
  before :each do
    @member   = FactoryGirl.create(:member)
    @garden = FactoryGirl.create(:garden, :member => @member)
  end

  it "should have a slug" do
    @garden.garden_slug.should == "member1-my-garden"
  end

  it "should have an owner" do
    @garden.owner.should be_an_instance_of Member
  end
end
