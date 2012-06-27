require 'spec_helper'

describe "Signspot::Threads" do
  describe "GET /signspot_threads" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get signspot_threads_path
      response.status.should be(200)
    end
  end
end
