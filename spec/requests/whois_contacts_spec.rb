require 'spec_helper'

describe "WhoisContacts" do
  describe "GET /whois_contacts" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get whois_contacts_path
      response.status.should be(200)
    end
  end
end
