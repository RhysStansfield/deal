class RegistrationsController < Devise::RegistrationsController

  before_filter :configure_permitted_parameters, only: [:create, :edit, :update]

  protected

  def after_update_path_for(resource)
    edit_user_registration_path(resource)
  end


end