class HomeController < ApplicationController

	

  def index
  	redirect_to(offers_path) if current_customer
	  redirect_to(dashboard_path) if current_business 
    @offers = Offer.all
  end

end
