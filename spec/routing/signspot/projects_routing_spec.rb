require "spec_helper"

describe Signspot::ProjectsController do
  describe "routing" do

    it "routes to #index" do
      get("/signspot_projects").should route_to("signspot_projects#index")
    end

    it "routes to #new" do
      get("/signspot_projects/new").should route_to("signspot_projects#new")
    end

    it "routes to #show" do
      get("/signspot_projects/1").should route_to("signspot_projects#show", :id => "1")
    end

    it "routes to #edit" do
      get("/signspot_projects/1/edit").should route_to("signspot_projects#edit", :id => "1")
    end

    it "routes to #create" do
      post("/signspot_projects").should route_to("signspot_projects#create")
    end

    it "routes to #update" do
      put("/signspot_projects/1").should route_to("signspot_projects#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/signspot_projects/1").should route_to("signspot_projects#destroy", :id => "1")
    end

  end
end
