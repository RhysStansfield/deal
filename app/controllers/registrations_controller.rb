class RegistrationsController < Devise::RegistrationsController


  def create
    build_resource(params[:business].permit(:email, :password, :password_confirmation, :company_name, :category_id))
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
      location = resource.is_a?(Business) ? business_sign_up_path : new_user_registration_path
      redirect_to location
    end
  end


end 