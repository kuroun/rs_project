require 'rails_helper'
describe Category do
  #test association
  it "should have and belong to many items" do
      t = Category.reflect_on_association(:items)
      t.macro.should == :has_and_belongs_to_many
  end
end
