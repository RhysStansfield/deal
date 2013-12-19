class BusinessesController < ApplicationController
  # before_filter :authenticate_business!, only: [:dashboard]

  # def authenticate_business!
  #   @business = Business.find params[:id]

  #   if !current_business || current_business != @business
  #     raise 'Unauthorized'
  #   end
  # end

  def index
    if request.xhr?
      @businesses = current_user.businesses
      @offers = current_customer.eligible_offers
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
      redirect_to dashboard_path
    else
      render 'new'
    end
  end

  def follow
    customer = current_user
    @business = Business.find params[:id]
    customer.follow(@business)

    # @offers = @business.offers
    @offers = customer.eligible_offers
    

    unless request.xhr?
      redirect_to discover_path
    end
  end

  def follow_data
    @business = Business.find params[:id]
    render template: 'businesses/follow.jbuilder'
  end

  def dashboard
  	@business = current_business
    redirect_to '/' and return unless @business

    @all_statistics = [@business.impressions, @business.conversions, @business.clicks]
  	@offers = @business.offers
  end

  def sign_up_params
    params[:business].permit(:email, :password, :password_confirmation, :company_name, :category_id)
  end

end