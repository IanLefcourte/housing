require 'spec_helper'

describe "residences/edit" do
  before(:each) do
    @residence = assign(:residence, stub_model(Residence,
      :name => "MyString",
      :waitlist => "MyString"
    ))
  end

  it "renders the edit residence form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => residences_path(@residence), :method => "post" do
      assert_select "input#residence_name", :name => "residence[name]"
      assert_select "input#residence_waitlist", :name => "residence[waitlist]"
    end
  end
end
