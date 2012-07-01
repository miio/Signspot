require 'spec_helper'

describe "Signspot::Projects" do
  describe "GET /signspot_projects" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get signspot_projects_path
      response.status.should be(200)
    end
  end
end
