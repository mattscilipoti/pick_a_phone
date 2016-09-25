require "rails_helper"

RSpec.describe CellPhonesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/cell_phones").to route_to("cell_phones#index")
    end

    it "routes to #new" do
      expect(:get => "/cell_phones/new").to route_to("cell_phones#new")
    end

    it "routes to #show" do
      expect(:get => "/cell_phones/1").to route_to("cell_phones#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/cell_phones/1/edit").to route_to("cell_phones#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/cell_phones").to route_to("cell_phones#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/cell_phones/1").to route_to("cell_phones#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/cell_phones/1").to route_to("cell_phones#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/cell_phones/1").to route_to("cell_phones#destroy", :id => "1")
    end

  end
end
