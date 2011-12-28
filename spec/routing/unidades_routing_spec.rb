require "spec_helper"

describe UnidadesController do
  describe "routing" do

    it "routes to #index" do
      get("/unidades").should route_to("unidades#index")
    end

    it "routes to #new" do
      get("/unidades/new").should route_to("unidades#new")
    end

    it "routes to #show" do
      get("/unidades/1").should route_to("unidades#show", :id => "1")
    end

    it "routes to #edit" do
      get("/unidades/1/edit").should route_to("unidades#edit", :id => "1")
    end

    it "routes to #create" do
      post("/unidades").should route_to("unidades#create")
    end

    it "routes to #update" do
      put("/unidades/1").should route_to("unidades#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/unidades/1").should route_to("unidades#destroy", :id => "1")
    end

  end
end
