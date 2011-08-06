require 'spec_helper'

describe "needs/index.html.erb" do
  before(:each) do
    assign(:needs, [
      stub_model(Need,
        :title => "Title",
        :description => "MyText",
        :user => nil,
        :skill => nil
      ),
      stub_model(Need,
        :title => "Title",
        :description => "MyText",
        :user => nil,
        :skill => nil
      )
    ])
  end

  it "renders a list of needs" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
