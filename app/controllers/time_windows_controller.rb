class TimeWindowsController < ApplicationController

  def show
    redirect_if_business
    @time_window = TimeWindow.find params[:id]
  end

  def create
    redirect_if_business
    @offer = Offer.find params[:offer_id]      
    @time_window = TimeWindow.find_or_create_by(user_id: current_user.id, offer: @offer)

    if @time_window.end_time > Time.now
      redirect_to [@offer, @time_window]
    else
      redirect_to offers_path
    end
  end

  private

  def redirect_if_business
    if current_business
      redirect_to offer_path(params[:offer_id])
    end
  end

end
