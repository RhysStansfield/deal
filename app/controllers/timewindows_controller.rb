class TimewindowsController < ApplicationController

  def show
    @time_window = TimeWindow.find params[:id]
  end
end
