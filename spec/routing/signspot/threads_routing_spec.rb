require "spec_helper"

describe Signspot::ThreadsController do
  describe "routing" do

    it "routes to #index" do
      get("/signspot_threads").should route_to("signspot_threads#index")
    end

    it "routes to #new" do
      get("/signspot_threads/new").should route_to("signspot_threads#new")
    end

    it "routes to #show" do
      get("/signspot_threads/1").should route_to("signspot_threads#show", :id => "1")
    end

    it "routes to #edit" do
      get("/signspot_threads/1/edit").should route_to("signspot_threads#edit", :id => "1")
    end

    it "routes to #create" do
      post("/signspot_threads").should route_to("signspot_threads#create")
    end

    it "routes to #update" do
      put("/signspot_threads/1").should route_to("signspot_threads#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/signspot_threads/1").should route_to("signspot_threads#destroy", :id => "1")
    end

  end
end
