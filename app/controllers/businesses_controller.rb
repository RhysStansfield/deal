class BusinessesController < ApplicationController

  def index
    @businesses = Business.all
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
  end

  def sign_up_params
    params[:business].permit(:email, :password, :password_confirmation, :company_name, :category_id)
  end

end