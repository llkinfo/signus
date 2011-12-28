require "spec_helper"

describe FamiliaController do
  describe "routing" do

    it "routes to #index" do
      get("/familia").should route_to("familia#index")
    end

    it "routes to #new" do
      get("/familia/new").should route_to("familia#new")
    end

    it "routes to #show" do
      get("/familia/1").should route_to("familia#show", :id => "1")
    end

    it "routes to #edit" do
      get("/familia/1/edit").should route_to("familia#edit", :id => "1")
    end

    it "routes to #create" do
      post("/familia").should route_to("familia#create")
    end

    it "routes to #update" do
      put("/familia/1").should route_to("familia#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/familia/1").should route_to("familia#destroy", :id => "1")
    end

  end
end
