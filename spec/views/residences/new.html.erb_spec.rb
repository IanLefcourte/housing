require 'spec_helper'

describe "residences/new" do
  before(:each) do
    assign(:residence, stub_model(Residence,
      :name => "MyString",
      :waitlist => "MyString"
    ).as_new_record)
  end

  it "renders new residence form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => residences_path, :method => "post" do
      assert_select "input#residence_name", :name => "residence[name]"
      assert_select "input#residence_waitlist", :name => "residence[waitlist]"
    end
  end
end
