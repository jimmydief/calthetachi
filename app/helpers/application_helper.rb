module ApplicationHelper

  def logged_in?
    request.authorization.present?
  end

end
