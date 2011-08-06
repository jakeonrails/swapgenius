require 'spec_helper'

describe "needs/edit.html.erb" do
  before(:each) do
    @need = assign(:need, stub_model(Need,
      :title => "MyString",
      :description => "MyText",
      :user => nil,
      :skill => nil
    ))
  end

  it "renders the edit need form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => needs_path(@need), :method => "post" do
      assert_select "input#need_title", :name => "need[title]"
      assert_select "textarea#need_description", :name => "need[description]"
      assert_select "input#need_user", :name => "need[user]"
      assert_select "input#need_skill", :name => "need[skill]"
    end
  end
end
