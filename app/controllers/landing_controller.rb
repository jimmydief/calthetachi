class LandingController < ApplicationController

  # Homepage
  def index
  
    @posts = Post.order("created_at DESC").limit(3)
  
  end
  
  # About Us
  def about
  
    # Static
  
  end
  
  # Rush
  def rush
  
    # Static
  
  end
  
  # Contact Us
  def contact
  
    # Static
  
  end

end
