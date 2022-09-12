class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  helper_method :current_user_can_edit?

  def current_user_can_edit?(post)
    user_signed_in? && post.user == current_user
  end
end
