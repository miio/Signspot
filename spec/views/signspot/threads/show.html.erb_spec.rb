require 'spec_helper'

describe "signspot_threads/show" do
  before(:each) do
    @thread = assign(:thread, stub_model(Signspot::Thread))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
