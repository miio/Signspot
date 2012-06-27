require 'spec_helper'

describe "signspot_threads/new" do
  before(:each) do
    assign(:thread, stub_model(Signspot::Thread).as_new_record)
  end

  it "renders new thread form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => signspot_threads_path, :method => "post" do
    end
  end
end
