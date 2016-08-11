require 'rails_helper'

RSpec.describe "Girls", :type => :request do
  describe "GET /girls" do
    it "works! (now write some real specs)" do
      get girls_path
      expect(response).to have_http_status(200)
    end
  end
end
