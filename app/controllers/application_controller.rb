class ApplicationController < ActionController::API
  include ActionController::MimeResponds

  acts_as_token_authentication_handler_for User, unless: lambda { |controller|
    controller.is_a? SiteModulesController
  }

  def authenticate_token
    head :unauthorized unless current_user
  end
end
