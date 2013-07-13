class RushRecommendationsController < ApplicationController
  def create
    @rush_recommendation = RushRecommendation.new(params[:rush_recommendation])
    if @rush_recommendation.save
      redirect_to rush_path, :notice => "Recommendation was sucessfully created!"
    else
      redirect_to rush_path, :flash => {:error => "Recommendation creation failed. Please make sure that all fields are filled in correctly."}
    end
  end
end
