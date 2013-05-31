require 'spec_helper'

describe "housing_parents/index" do
  before(:each) do
    assign(:housing_parents, [
      stub_model(HousingParent,
        :housing_id => 1,
        :parent_id => 2
      ),
      stub_model(HousingParent,
        :housing_id => 1,
        :parent_id => 2
      )
    ])
  end

  it "renders a list of housing_parents" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
