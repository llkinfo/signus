class ApplicationController < ActionController::Base

  protect_from_forgery

  before_filter :authenticate_user!, :set_charset

  def set_charset
    headers["Content-Type"] = "text/html; charset=ISO-8859-1"
  end

end
