class ApplicationController < ActionController::API
  include ActionController::MimeResponds

  before_action :add_headers

  acts_as_token_authentication_handler_for User, unless: lambda { |controller|
    controller.is_a? SiteModulesController
  }

  def authenticate_token
    head :unauthorized unless current_user
  end

  def add_headers
    headers['Access-Control-Allow-Origin'] = 'http://localhost:3000'
    headers['Access-Control-Allow-Methods'] = 'GET, POST, PUT, PATCH, DELETE, OPTIONS, HEAD'
    headers['Access-Control-Request-Method'] = '*'
    headers['Access-Control-Allow-Headers'] = 'Origin, X-Requested-With, Content-Type, Accept, Authorization'
  end
end
