# frozen_string_literal: true

class Users::SessionsController < Devise::SessionsController
  # before_action :configure_sign_in_params, only: [:create]
  skip_before_action :verify_signed_out_user, only: [:destroy]

  # GET /resource/sign_in
  # def new
  #   super
  # end

  # POST /resource/sign_in
  def create
    @user = User.find_by(email: sign_in_params[:email])
    if @user.valid_password?(sign_in_params[:password])
      render json: @user, status: :created
    else
      head(:unauthorized)
    end
  end

  # DELETE /resource/sign_out
  def destroy
    byebug
    current_user&.authentication_token = nil
    current_user&.save ? head(:ok) : head(:unauthorized)
  end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end
end
