require "spec_helper"

describe HousingParentsController do
  describe "routing" do

    it "routes to #index" do
      get("/housing_parents").should route_to("housing_parents#index")
    end

    it "routes to #new" do
      get("/housing_parents/new").should route_to("housing_parents#new")
    end

    it "routes to #show" do
      get("/housing_parents/1").should route_to("housing_parents#show", :id => "1")
    end

    it "routes to #edit" do
      get("/housing_parents/1/edit").should route_to("housing_parents#edit", :id => "1")
    end

    it "routes to #create" do
      post("/housing_parents").should route_to("housing_parents#create")
    end

    it "routes to #update" do
      put("/housing_parents/1").should route_to("housing_parents#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/housing_parents/1").should route_to("housing_parents#destroy", :id => "1")
    end

  end
end
