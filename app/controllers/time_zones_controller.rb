class TimeZonesController < ApplicationController
  before_action :set_time_zone, only: [:show, :edit, :update, :destroy]

  # GET /time_zones
  # GET /time_zones.json
  def index
    @time_zones = TimeZone.all
  end

  # GET /time_zones/1
  # GET /time_zones/1.json
  def show
  end

  # GET /time_zones/new
  def new
    @time_zone = TimeZone.new
  end

  # GET /time_zones/1/edit
  def edit
  end

  # POST /time_zones
  # POST /time_zones.json
  def create
    @time_zone = TimeZone.new(time_zone_params)

    respond_to do |format|
      if @time_zone.save
        format.html { redirect_to @time_zone, notice: 'Time zone was successfully created.' }
        format.json { render :show, status: :created, location: @time_zone }
      else
        format.html { render :new }
        format.json { render json: @time_zone.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /time_zones/1
  # PATCH/PUT /time_zones/1.json
  def update
    respond_to do |format|
      if @time_zone.update(time_zone_params)
        format.html { redirect_to @time_zone, notice: 'Time zone was successfully updated.' }
        format.json { render :show, status: :ok, location: @time_zone }
      else
        format.html { render :edit }
        format.json { render json: @time_zone.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /time_zones/1
  # DELETE /time_zones/1.json
  def destroy
    @time_zone.destroy
    respond_to do |format|
      format.html { redirect_to time_zones_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_time_zone
      @time_zone = TimeZone.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def time_zone_params
      params.require(:time_zone).permit(:name, :code, :location)
    end
end
