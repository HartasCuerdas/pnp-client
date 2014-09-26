# Application Controller
class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  before_action :set_locale
  
  # sets locale from url param
  def set_locale
    if ( ['en','es'].include? params[:locale] ) 
      I18n.locale = params[:locale]
    else
      I18n.locale = I18n.default_locale
    end
  end

end
