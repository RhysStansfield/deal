class CustomersController < ApplicationController

  def update
    current_customer.update_categories params['category_ids']
    redirect_to root_path
  end

end