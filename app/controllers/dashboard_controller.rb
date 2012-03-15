class DashboardController < ApplicationController
  
  # authentication will redirect users not logged in
  before_filter :require_authentication

  def show
  end

end
