require 'spec_helper'

describe "housing_parents/show" do
  before(:each) do
    @housing_parent = assign(:housing_parent, stub_model(HousingParent,
      :housing_id => 1,
      :parent_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
  end
end
