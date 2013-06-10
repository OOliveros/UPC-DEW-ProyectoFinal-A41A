class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :require_login
  skip_before_filter :require_login, :only => [:index, :new, :create]
  skip_before_filter :require_login, :except => [:destroy]
  
  protected
  def not_authenticated
  	redirect_to login_path, :alert => "Please login first."
  end

end
