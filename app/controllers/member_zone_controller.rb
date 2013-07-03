class MemberZoneController < ApplicationController
  http_basic_authenticate_with :name => "calthetachi", :password => "arthurchase"

  def index
  
    # Static
    
  end
end
