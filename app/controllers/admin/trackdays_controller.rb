class Admin::TrackdaysController < Admin::BaseController
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
        format.html { redirect_to admin_root_path, notice: 'Trackday was successfully created.' }
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
        format.html { redirect_to admin_root_path, notice: 'Trackday was successfully updated.' }
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
      format.html { redirect_to admin_root_path }
      format.json { head :no_content }
    end
  end

  private
    def set_trackday
      @trackday = Trackday.find(params[:id])
    end

    def trackday_params
      params.require(:trackday).permit(:track, :organization, :session_type, :price, :date, :link)
    end
end
