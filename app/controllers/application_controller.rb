class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  

  private
  def check_credentials
    if current_user == nil
      head 403 and return
    end
  end
end
