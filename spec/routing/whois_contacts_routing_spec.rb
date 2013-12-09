require "spec_helper"

describe WhoisContactsController do
  describe "routing" do

    it "routes to #index" do
      get("/whois_contacts").should route_to("whois_contacts#index")
    end

    it "routes to #new" do
      get("/whois_contacts/new").should route_to("whois_contacts#new")
    end

    it "routes to #show" do
      get("/whois_contacts/1").should route_to("whois_contacts#show", :id => "1")
    end

    it "routes to #edit" do
      get("/whois_contacts/1/edit").should route_to("whois_contacts#edit", :id => "1")
    end

    it "routes to #create" do
      post("/whois_contacts").should route_to("whois_contacts#create")
    end

    it "routes to #update" do
      put("/whois_contacts/1").should route_to("whois_contacts#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/whois_contacts/1").should route_to("whois_contacts#destroy", :id => "1")
    end

  end
end
