class TrackdaysController < ApplicationController
  before_action :set_trackday, only: [:show, :edit, :update, :destroy]

  def index
    @trackdays = Trackday.all
  end

  def show
  end

  def new
    @trackday = Trackday.new
  end

  def edit
  end

  def create
    @trackday = Trackday.new(trackday_params)

    respond_to do |format|
      if @trackday.save
        format.html { redirect_to @trackday, notice: 'Trackday was successfully created.' }
        format.json { render action: 'show', status: :created, location: @trackday }
      else
        format.html { render action: 'new' }
        format.json { render json: @trackday.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @trackday.update(trackday_params)
        format.html { redirect_to @trackday, notice: 'Trackday was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @trackday.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @trackday.destroy
    respond_to do |format|
      format.html { redirect_to trackdays_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_trackday
      @trackday = Trackday.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def trackday_params
      params.require(:trackday).permit(:track, :organization, :session_type, :price, :date)
    end
end
