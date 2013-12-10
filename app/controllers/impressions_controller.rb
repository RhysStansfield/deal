class ImpressionsController < ApplicationController

	def new
		@impression = Impression.new
	end

	def create
		if current_user
			@impression = Impression.new impression_params.merge(user: current_user)
			@impression.save
		end
		render json: { }
	end

		
private
	def impression_params
		params.permit(:offer_id)
	end
	


end
