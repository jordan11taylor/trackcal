class TrackdaysController < ApplicationController
  has_scope :by_track
  has_scope :by_organization

  helper_method :tracks

  def index
    @trackdays = apply_scopes(Trackday.order("date")).all
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def trackday_params
      params.require(:trackday).permit(:track, :organization, :session_type, :price, :date, :link)
    end

    def tracks
      @tracks ||= Trackday.distinct.pluck(:track)
    end
end
