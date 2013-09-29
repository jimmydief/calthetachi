class MemberZoneController < ApplicationController
  http_basic_authenticate_with :name => "calthetachi", :password => "arthurcha$e56"

  def index
  
    @rush_recommendations = RushRecommendation.order("created_at DESC")
    
  end
end
