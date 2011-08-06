require 'spec_helper'

describe "offers/edit.html.erb" do
  before(:each) do
    @offer = assign(:offer, stub_model(Offer,
      :description => "MyText",
      :need => nil,
      :user => nil,
      :status => "MyString"
    ))
  end

  it "renders the edit offer form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => offers_path(@offer), :method => "post" do
      assert_select "textarea#offer_description", :name => "offer[description]"
      assert_select "input#offer_need", :name => "offer[need]"
      assert_select "input#offer_user", :name => "offer[user]"
      assert_select "input#offer_status", :name => "offer[status]"
    end
  end
end
