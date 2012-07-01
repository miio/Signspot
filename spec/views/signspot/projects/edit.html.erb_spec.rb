require 'spec_helper'

describe "signspot_projects/edit" do
  before(:each) do
    @project = assign(:project, stub_model(Signspot::Project))
  end

  it "renders the edit project form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => signspot_projects_path(@project), :method => "post" do
    end
  end
end
