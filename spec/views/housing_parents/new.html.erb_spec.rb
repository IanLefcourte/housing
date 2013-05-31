require 'spec_helper'

describe "housing_parents/new" do
  before(:each) do
    assign(:housing_parent, stub_model(HousingParent,
      :housing_id => 1,
      :parent_id => 1
    ).as_new_record)
  end

  it "renders new housing_parent form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => housing_parents_path, :method => "post" do
      assert_select "input#housing_parent_housing_id", :name => "housing_parent[housing_id]"
      assert_select "input#housing_parent_parent_id", :name => "housing_parent[parent_id]"
    end
  end
end
