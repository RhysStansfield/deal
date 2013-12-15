class TimeWindowsController < ApplicationController

  def show
    @time_window = TimeWindow.find params[:id]

    if @time_window.end_time < Time.now
      redirect_to offers_path
    end
  end

  def time_remaining
    time_window = TimeWindow.find params[:id]
    {seconds: (time_window.end_time.to_i - Time.now.to_i)}.to_json
  end

  def create
    @offer = Offer.find params[:offer_id]      
    @time_window = TimeWindow.find_or_create_by(user_id: current_user.id, offer: @offer)

    if @time_window.end_time > Time.now
      redirect_to [@offer, @time_window]
    else
      redirect_to offers_path
    end
  end
end
