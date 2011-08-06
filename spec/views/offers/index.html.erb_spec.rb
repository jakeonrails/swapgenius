require 'spec_helper'

describe "offers/index.html.erb" do
  before(:each) do
    assign(:offers, [
      stub_model(Offer,
        :description => "MyText",
        :need => nil,
        :user => nil,
        :status => "Status"
      ),
      stub_model(Offer,
        :description => "MyText",
        :need => nil,
        :user => nil,
        :status => "Status"
      )
    ])
  end

  it "renders a list of offers" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Status".to_s, :count => 2
  end
end
