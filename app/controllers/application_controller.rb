class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :configure_permitted_parameters, if: :devise_controller?

  helper_method :current_customer, :current_business

  helper_method :current_customer
  
  protected

  def after_update_path_for(resource)
    edit_user_registration_path(resource)
  end

  def after_sign_in_path_for(resource)
    if current_user.type == "Business"
      dashboard_business_path(resource)
    else
      root_path
    end
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:type, :email, :password, :password_confirmation, :remember_me, :company_name, :category_id) }
    devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:email, :password, :password_confirmation, :current_password, :avatar) }
  end

  def current_customer
    if current_user && current_user.is_a?(Customer)
      return current_user
    end
  end

  def current_business
    if current_user && current_user.is_a?(Business)
      return current_user
    end
  end

end
