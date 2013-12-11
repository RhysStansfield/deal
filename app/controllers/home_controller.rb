class HomeController < ApplicationController

  def index
  	redirect_to(offers_path, :notice => "Welcome back!") if current_customer
	redirect_to(dashboard_business_path(current_business), :notice => "Welcome back!") if current_business 
  end

end
