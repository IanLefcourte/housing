require 'spec_helper'

describe "parents/edit" do
  before(:each) do
    @parent = assign(:parent, stub_model(Parent,
      :name => "MyString",
      :phone => 1
    ))
  end

  it "renders the edit parent form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => parents_path(@parent), :method => "post" do
      assert_select "input#parent_name", :name => "parent[name]"
      assert_select "input#parent_phone", :name => "parent[phone]"
    end
  end
end
