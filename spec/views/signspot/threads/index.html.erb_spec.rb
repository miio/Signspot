require 'spec_helper'

describe "signspot_threads/index" do
  before(:each) do
    assign(:signspot_threads, [
      stub_model(Signspot::Thread),
      stub_model(Signspot::Thread)
    ])
  end

  it "renders a list of signspot_threads" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
