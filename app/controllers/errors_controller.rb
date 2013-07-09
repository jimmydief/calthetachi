class ErrorsController < ApplicationController
  before_filter :set_exception

  def not_found
    @error = env["action_dispatch.exception"]
  end

  def internal
    
  end
  
  protected
 
  def set_exception
    @error = env["action_dispatch.exception"]
  end
  
end
