class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :contact_us_initiate

  def contact_us_initiate
    @contact = Contact.new
  end
end
