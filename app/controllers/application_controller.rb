class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :set_current_user
  def set_current_user
    Current.user = User.find_by(id: session[:user_id])
  end

  def require_user_logged_in!
    redirect_to sign_in_path, alert: 'You must br signed in to do that' if Current.user.nil?
  end
end
