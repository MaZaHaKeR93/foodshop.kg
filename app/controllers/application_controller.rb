class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def access_denied(exception)
    redirect_to root_path, notice: "#{exception.message}"
  end

  private

  def configure_permitted_parameters
  	devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :phone_number, :adress])
  	devise_parameter_sanitizer.permit(:account_update, keys: [:username, :phone_number, :adress])
  end



end
