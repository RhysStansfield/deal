class ConversionsController < ApplicationController

  def new
    @conversion = Conversion.new
  end

  def create
    if current_user
      @conversion = Conversion.new conversion_params.merge(customer_id: current_user.id, time_taken_to_buy: current_user.time_taken_to_buy_last_offer)

      @conversion.save
    end
    render json: { }
  end

private
  def conversion_params
    params.permit(:offer_id)
  end
end
