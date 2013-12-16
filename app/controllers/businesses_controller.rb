class BusinessesController < ApplicationController

  def index
    if request.xhr?
      @businesses = current_user.businesses
    else
      @businesses = Business.all
    end
  end

  def new
    @business = Business.new
  end

  def create
    @business = Business.new(sign_up_params)
    if @business.save
      flash[:notice] = 'Signed up as a business'
      sign_in(:user, @business)
      redirect_to dashboard_business_path(@business)
    else
      render 'new'
    end
  end

  def follow
    customer = current_user
    @business = Business.find params[:id]
    customer.follow(@business)

    unless request.xhr?
      redirect_to businesses_path
    end
  end

  def dashboard
  	@business = Business.find params[:id]
    @all_statistics = [Impression, Conversion, Click]
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
    @revenue = []
    @offers.each do |offer|
      @revenue << offer.price
    end
    # @total_revenue = @conversions.length * @offers.length
  end

  def sign_up_params
    params[:business].permit(:email, :password, :password_confirmation, :company_name, :category_id)
  end

end