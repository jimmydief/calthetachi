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
  
  # Active Member Info
  def actives
  
    # Static
  
  end
  
  # Alumni Info & Resources
  def alumni
  
    # Static
  
  end
  
  # Contact Us
  def contact
  
    # Static
  
  end

end
