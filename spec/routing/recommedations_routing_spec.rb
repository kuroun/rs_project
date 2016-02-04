require "rails_helper"

RSpec.describe RecommendationsController, :type => :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "recommendations/index").to route_to("recommendations#index")
    end
  end
end
