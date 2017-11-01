module ApplicationHelper
  def admin?
    session[:user] == 'admin'
  end
end
