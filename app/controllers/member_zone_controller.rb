class MemberZoneController < ApplicationController
  http_basic_authenticate_with :name => "calthetachi", :password => "arthurchase"

  def index
  
    @rush_recommendations = RushRecommendation.order("created_at DESC")
    
  end
end
