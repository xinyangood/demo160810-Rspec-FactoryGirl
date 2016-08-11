require "rails_helper"

RSpec.describe GirlsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/girls").to route_to("girls#index")
    end

    it "routes to #new" do
      expect(:get => "/girls/new").to route_to("girls#new")
    end

    it "routes to #show" do
      expect(:get => "/girls/1").to route_to("girls#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/girls/1/edit").to route_to("girls#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/girls").to route_to("girls#create")
    end

    it "routes to #update" do
      expect(:put => "/girls/1").to route_to("girls#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/girls/1").to route_to("girls#destroy", :id => "1")
    end

  end
end
