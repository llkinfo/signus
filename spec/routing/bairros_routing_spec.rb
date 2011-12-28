require "spec_helper"

describe BairrosController do
  describe "routing" do

    it "routes to #index" do
      get("/bairros").should route_to("bairros#index")
    end

    it "routes to #new" do
      get("/bairros/new").should route_to("bairros#new")
    end

    it "routes to #show" do
      get("/bairros/1").should route_to("bairros#show", :id => "1")
    end

    it "routes to #edit" do
      get("/bairros/1/edit").should route_to("bairros#edit", :id => "1")
    end

    it "routes to #create" do
      post("/bairros").should route_to("bairros#create")
    end

    it "routes to #update" do
      put("/bairros/1").should route_to("bairros#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/bairros/1").should route_to("bairros#destroy", :id => "1")
    end

  end
end
