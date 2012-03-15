class ApplicationController < ActionController::Base
  include Authentication

  # this is anti-Cross-site request forgery (CSRF) 
  # - can be overridden but better to be safe!
  
  protect_from_forgery

  # rescues exceptions raised in controller actions
  # :with option specifies method to handle them
  
  rescue_from FbGraph::Exception, :with => :fb_graph_exception

  # Try to handle errors gracefully by removing user object and 
  # sending to home page.
  
  def fb_graph_exception(e)
    flash[:error] = {
      :title   => e.class,
      :message => e.message
    }
    current_user.try(:destroy)
    redirect_to root_url
  end

end
