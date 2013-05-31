require 'spec_helper'

describe "children/edit" do
  before(:each) do
    @child = assign(:child, stub_model(Child,
      :name => "MyString"
    ))
  end

  it "renders the edit child form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => children_path(@child), :method => "post" do
      assert_select "input#child_name", :name => "child[name]"
    end
  end
end
