require "rails_helper"

RSpec.describe ItemAddsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/item_adds").to route_to("item_adds#index")
    end

    it "routes to #new" do
      expect(:get => "/item_adds/new").to route_to("item_adds#new")
    end

    it "routes to #show" do
      expect(:get => "/item_adds/1").to route_to("item_adds#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/item_adds/1/edit").to route_to("item_adds#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/item_adds").to route_to("item_adds#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/item_adds/1").to route_to("item_adds#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/item_adds/1").to route_to("item_adds#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/item_adds/1").to route_to("item_adds#destroy", :id => "1")
    end

  end
end
