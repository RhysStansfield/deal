class RegistrationsController < Devise::RegistrationsController

  before_filter :configure_permitted_parameters, only: [:create, :edit, :update]

  def create
    build_resource(sign_up_params)

    if resource.save
      yield resource if block_given?
      if resource.active_for_authentication?
        set_flash_message :notice, :signed_up if is_flashing_format?
        sign_up(resource_name, resource)
        respond_with resource, :location => after_sign_up_path_for(resource)
      else
        set_flash_message :notice, :"signed_up_but_#{resource.inactive_message}" if is_flashing_format?
        expire_data_after_sign_in!
        respond_with resource, :location => after_inactive_sign_up_path_for(resource)
      end
    else
      clean_up_passwords resource
      render 'home/index'
    end
  end


  protected

  def after_update_path_for(resource)
    edit_user_registration_path(resource)
  end

end