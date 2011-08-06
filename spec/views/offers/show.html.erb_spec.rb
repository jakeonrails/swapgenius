require 'spec_helper'

describe "offers/show.html.erb" do
  before(:each) do
    @offer = assign(:offer, stub_model(Offer,
      :description => "MyText",
      :need => nil,
      :user => nil,
      :status => "Status"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Status/)
  end
end
