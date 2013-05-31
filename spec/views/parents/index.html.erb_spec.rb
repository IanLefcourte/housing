require 'spec_helper'

describe "parents/index" do
  before(:each) do
    assign(:parents, [
      stub_model(Parent,
        :name => "Name",
        :phone => 1
      ),
      stub_model(Parent,
        :name => "Name",
        :phone => 1
      )
    ])
  end

  it "renders a list of parents" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
