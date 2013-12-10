class BusinessesController < ApplicationController

  def index
    @businesses = Business.all
  end

  def follow
    customer = current_user
    @business = Business.find params[:id]
    customer.follow(@business)

    redirect_to businesses_path
  end

  def dashboard
  	@business = Business.find params[:id]
  	@offers = Offer.find(:all, conditions: { business_id: @business.id })
  	@impressions = []
  	@offers.each do |offer|
  	  @impressions << Impression.find(:all, conditions: { offer_id: offer.id })
  	end
  end



end