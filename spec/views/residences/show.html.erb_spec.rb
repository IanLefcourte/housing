require 'spec_helper'

describe "residences/show" do
  before(:each) do
    @residence = assign(:residence, stub_model(Residence,
      :name => "Name",
      :waitlist => "Waitlist"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Waitlist/)
  end
end
