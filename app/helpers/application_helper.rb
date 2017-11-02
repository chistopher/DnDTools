module ApplicationHelper
  def admin?
    session[:user] == 'admin'
  end

  def permitted(model)
    if admin?
      return model
    else
      return model.discovered
    end
  end
end
