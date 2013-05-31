require 'spec_helper'

describe "housing_parents/edit" do
  before(:each) do
    @housing_parent = assign(:housing_parent, stub_model(HousingParent,
      :housing_id => 1,
      :parent_id => 1
    ))
  end

  it "renders the edit housing_parent form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => housing_parents_path(@housing_parent), :method => "post" do
      assert_select "input#housing_parent_housing_id", :name => "housing_parent[housing_id]"
      assert_select "input#housing_parent_parent_id", :name => "housing_parent[parent_id]"
    end
  end
end
