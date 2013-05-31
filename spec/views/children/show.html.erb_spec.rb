require 'spec_helper'

describe "children/show" do
  before(:each) do
    @child = assign(:child, stub_model(Child,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
