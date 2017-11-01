class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  private
    def authenticate
      authenticate_or_request_with_http_basic do |user_name, password|
        session[:user] = 'admin' if user_name == 'admin' && password == 'password'
      end
    end

    def admin?
      session[:user] == 'admin'
    end
end
