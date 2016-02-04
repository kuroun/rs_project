class RecommendationsController < ApplicationController
  caches_page :index
  def index
    @items = User.new.item_recommendation(recommendation_params) if !params[:user_id].blank?
  end
  private
     # Never trust parameters from the scary internet, only allow the white list through.
    def recommendation_params
      params.permit(:user_id,:recommendation_strategy)
    end
end
