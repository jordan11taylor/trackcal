class TrackdaysController < ApplicationController
  has_scope :by_track
  has_scope :by_organization

  helper_method :tracks
  helper_method :organizations

  def index
    @trackdays = apply_scopes(Trackday.order("date")).all
  end

  def show
    @trackday = Trackday.find(params[:id])
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def trackday_params
      params.require(:trackday).permit(:track, :organization, :session_type, :price, :date, :link)
    end

    def tracks
      @tracks ||= Trackday.distinct.pluck(:track)
    end

    def organizations
      @organizations ||= Trackday.distinct.pluck(:organization)
    end
end
