class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  include SessionsHelper

  before_action :set_cache_buster

	def set_cache_buster
	   response.headers["Cache-Control"] = "no-cache, no-store, max-age=0, must-revalidate"
	   response.headers["Pragma"] = "no-cache"
	   response.headers["Expires"] = "0"
	end  
end
