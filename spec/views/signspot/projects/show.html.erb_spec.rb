require 'spec_helper'

describe "signspot_projects/show" do
  before(:each) do
    @project = assign(:project, stub_model(Signspot::Project))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
