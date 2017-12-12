class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
  def after_sign_in_path_for(resource)
    request.env['omniauth.origin'] || stored_location_for(resource) || dashboard_path
  end

    
  private
  def check_credentials
    if current_user == nil
      head 403 and return
    end
  end
end
