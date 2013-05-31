require 'spec_helper'

describe "residences/index" do
  before(:each) do
    assign(:residences, [
      stub_model(Residence,
        :name => "Name",
        :waitlist => "Waitlist"
      ),
      stub_model(Residence,
        :name => "Name",
        :waitlist => "Waitlist"
      )
    ])
  end

  it "renders a list of residences" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Waitlist".to_s, :count => 2
  end
end
