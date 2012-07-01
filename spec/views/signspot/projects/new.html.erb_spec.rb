require 'spec_helper'

describe "signspot_projects/new" do
  before(:each) do
    assign(:project, stub_model(Signspot::Project).as_new_record)
  end

  it "renders new project form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => signspot_projects_path, :method => "post" do
    end
  end
end
