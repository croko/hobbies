class ApplicationController < ActionController::Base

  respond_to :html, :json, :js
  protect_from_forgery
  before_filter :authenticate_user!

end
