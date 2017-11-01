class WelcomeController < ApplicationController
  before_action :authenticate, only: :login

  def index
  end

  def login
  end
end
