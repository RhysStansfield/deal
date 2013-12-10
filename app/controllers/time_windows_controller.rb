class TimeWindowsController < ApplicationController

  def show
    @time_window = TimeWindow.find params[:id]
  end

  def create
    @offer = Offer.find params[:offer_id]      

    if (@time_window = TimeWindow.create(user: current_user, offer: @offer)).valid?
      redirect_to [@offer, @time_window] 
    else
      flash.now[:error] = "Failed: "
      redirect_to offers_path
    end
    #{@prediction.errors.full_messages}
  end
end
