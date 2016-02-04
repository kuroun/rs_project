require 'rails_helper'
describe Item do
  #test association
  it "should have and belong to many categories" do
      t = Item.reflect_on_association(:categories)
      t.macro.should == :has_and_belongs_to_many
  end
  it "should have and belong to many users" do
      t = Item.reflect_on_association(:users)
      t.macro.should == :has_and_belongs_to_many
  end
end
