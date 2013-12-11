class HomeController < ApplicationController

  helper_method :already_checked?

  def index
  	redirect_to(offers_path) if current_customer
	  redirect_to(dashboard_business_path(current_business)) if current_business 
    @offers = Offer.all
  end

end
