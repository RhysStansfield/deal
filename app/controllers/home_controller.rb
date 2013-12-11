class HomeController < ApplicationController

  helper_method :already_checked?

  def index
    @offers = Offer.all
  end

  protected

  def already_checked? category_id
    current_customer.category_ids.include?(category_id)
  end
  
end
