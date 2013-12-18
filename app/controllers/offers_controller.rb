class OffersController < ApplicationController

	helper_method :already_checked?

	def index
		@offers = Offer.all
		@businesses = Business.all
		# render template: 'offers/indexHAML'
		# if request.xhr?
	end

	def index2
		@offers = Offer.all
		@businesses = Business.all
	end

	def new
		@offer = Offer.new
		@offer.business = current_user
	end

	def edit
    @offer = Offer.find params[:id]
	end

	def create
		@offer = Offer.new(offer_params)
		@offer.business = current_user
		@offer.business_id = current_user.id
		if @offer.save
			redirect_to dashboard_path
		else
			flash[:notice] = 'Sorry, there were the following errors: @offer.errors.full_messages'
			render 'offers/new'
		end
	end

	def show
		# if current_customer
		# 	redirect_to offer_time_windows_path(Offer.last.id), method: :post
		# end
		@offer = Offer.find(params[:id])
	end

	def already_checked? category_id
		current_customer.category_ids.include?(category_id)
	end
		
private
	def offer_params
		params.require(:offer).permit(:business, :product, :product_description, :price, :users_time_availablity, :avatar, :available_from, :available_to, :RRP)
	end

end
