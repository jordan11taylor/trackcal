class TrackdaysController < ApplicationController
  def index
    @trackdays = Trackday.all
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def trackday_params
      params.require(:trackday).permit(:track, :organization, :session_type, :price, :date)
    end
end
