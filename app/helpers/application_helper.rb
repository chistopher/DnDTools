module ApplicationHelper
  def admin?
    session[:user] == 'admin'
  end

  def permitted(model)
    if admin?
      return model.unscoped
    else
      return model
    end
  end
end
