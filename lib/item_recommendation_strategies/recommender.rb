class Recommender
  attr_accessor :user_id, :recom_strategy
  def initialize(user_id, strategy)
    @user_id = user_id
    @recom_strategy = strategy
  end
  def output
    @recom_strategy.output(@user_id)
  end
end