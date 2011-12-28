require 'spec_helper'

describe "Municipios" do
  describe "GET /municipios" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get municipios_path
      response.status.should be(200)
    end
  end
end
