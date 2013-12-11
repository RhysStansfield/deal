class OffersController < ApplicationController

	# impressionist actions: [:index]

	def index
		@offers = Offer.all #.order("offers.created_at desc")
	end

	def new
		@offer = Offer.new
	end

	def create
		@offer = Offer.new(offer_params)
		@offer.business = current_user
		@offer.business_id = current_user.id
		@offer.save
		redirect_to @offer
	end

	def show
		@offer = Offer.find(params[:id])
	end
		
private
	def offer_params
		params.require(:offer).permit(:business, :product, :product_description, :price)
	end


end
