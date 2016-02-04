require 'rails_helper'
describe User do
  #test association
  it "should have and belong to many items" do
      t = User.reflect_on_association(:items)
      t.macro.should == :has_and_belongs_to_many
  end
end

#test method
describe "item recommendation method testing" do
  before :each do
     @cat_strategy = "CategoryRecommender"
     @user_strategy = "SimilarUsersRecommender"
  end
  context "Category Recommender" do
    it "creates new CategoryRecommender object" do
        expect(CategoryRecommender.new.class.name).to eq @cat_strategy
    end
  end
  context "Similar Users Recommender" do
    it "creates new SimilarUsersRecommender object" do
        expect(SimilarUsersRecommender.new.class.name).to eq @user_strategy
    end
  end
end
