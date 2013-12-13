class BusinessesController < ApplicationController

  def index
    @businesses = Business.all
  end

  def follow
    customer = current_user
    @business = Business.find params[:id]
    customer.follow(@business)


    if request.xhr?
      render json: { new_follow_count: @business.customers.size,
        follow_button_text: (@business.customers.include?(current_user) ? 'Unfollow' : 'Follow')
      }
    else
      redirect_to businesses_path
    end
  end

  def dashboard
  	@business = Business.find params[:id]
  	@offers = @business.offers
  	@impressions = []
  	@offers.each do |offer|
  	  @impressions << offer.impressions
  	end
  	@clicks = []
  	@offers.each do |offer|
  	  @clicks << Click.find(:all, conditions: { offer_id: offer.id })
  	end
    @conversions = []
    @offers.each do |offer|
      @conversions << offer.conversions
    end
  end



end