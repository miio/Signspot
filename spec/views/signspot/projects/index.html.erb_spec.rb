require 'spec_helper'

describe "signspot_projects/index" do
  before(:each) do
    assign(:signspot_projects, [
      stub_model(Signspot::Project),
      stub_model(Signspot::Project)
    ])
  end

  it "renders a list of signspot_projects" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
