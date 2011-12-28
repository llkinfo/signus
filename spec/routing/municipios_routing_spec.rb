require "spec_helper"

describe MunicipiosController do
  describe "routing" do

    it "routes to #index" do
      get("/municipios").should route_to("municipios#index")
    end

    it "routes to #new" do
      get("/municipios/new").should route_to("municipios#new")
    end

    it "routes to #show" do
      get("/municipios/1").should route_to("municipios#show", :id => "1")
    end

    it "routes to #edit" do
      get("/municipios/1/edit").should route_to("municipios#edit", :id => "1")
    end

    it "routes to #create" do
      post("/municipios").should route_to("municipios#create")
    end

    it "routes to #update" do
      put("/municipios/1").should route_to("municipios#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/municipios/1").should route_to("municipios#destroy", :id => "1")
    end

  end
end
