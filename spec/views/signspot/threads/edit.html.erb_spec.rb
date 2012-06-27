require 'spec_helper'

describe "signspot_threads/edit" do
  before(:each) do
    @thread = assign(:thread, stub_model(Signspot::Thread))
  end

  it "renders the edit thread form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => signspot_threads_path(@thread), :method => "post" do
    end
  end
end
