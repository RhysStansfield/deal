class ClicksController < ApplicationController

	def new
		@click = Click.new
	end

	def create
		if current_user
			@click = Click.new click_params.merge(user: current_user)
			@click.save
		end
		render json: { }
	end

		
private
	def click_params
		params.permit(:offer_id)
	end



end