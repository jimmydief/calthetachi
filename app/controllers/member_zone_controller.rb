class MemberZoneController < ApplicationController
  http_basic_authenticate_with :name => ENV["MEMBER_ZONE_NAME"], :password => ENV["MEMBER_ZONE_PASSWORD"] if Rails.env.production?

  def index
  
    @rush_recommendations = RushRecommendation.order("created_at DESC")
    
  end
end