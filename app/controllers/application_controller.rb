class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception

  before_action :update_allowed_parameters, if: :devise_controller?

  protected

  def update_allowed_parameters
    devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:first_name, :last_name, :email, :password)}
    devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:first_name, :last_name, :email, :password, :current_password)}
  end

  def set_current_course current_course
    @@current_course = current_course
  end

  def get_current_course
    @@current_course
  end

  def set_current_group current_group
    @@current_group = current_group
  end

  def get_current_group
    @@current_group
  end

  helper_method :set_current_course
  helper_method :get_current_course

  helper_method :set_current_group
  helper_method :get_current_group

end
