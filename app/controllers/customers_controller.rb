class CustomersController < ApplicationController

  def update
    current_customer.update_categories params['category_ids']
    render json: current_customer.companies_of_interest
  end

end