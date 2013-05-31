require 'spec_helper'

describe "children/new" do
  before(:each) do
    assign(:child, stub_model(Child,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new child form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => children_path, :method => "post" do
      assert_select "input#child_name", :name => "child[name]"
    end
  end
end
