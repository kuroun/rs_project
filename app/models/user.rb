Dir[Rails.root.join('lib/item_recommendation_strategies/*.rb')].each { |file| require file }

class User < ActiveRecord::Base
  has_and_belongs_to_many :items
  
  def item_recommendation(context)
    user_id = context[:user_id]
    strategy = context[:recommendation_strategy].constantize.new
    recommender = Recommender.new(user_id, strategy)
    recommender.output
    
  end
end
