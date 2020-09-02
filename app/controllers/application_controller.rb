class ApplicationController < ActionController::API
  acts_as_token_authentication_handler_for User

  def authenticate_token
    head(:unauthorized) unless current_user
  end
end
