class EventguestsController < ApplicationController
  before_action :set_eventguest, only: [:show, :edit, :update, :destroy]

  # GET /eventguests
  # GET /eventguests.json
  def index
    @eventguests = Eventguest.all
  end

  # GET /eventguests/1
  # GET /eventguests/1.json
  def show
  end

  # GET /eventguests/new
  def new
    @eventguest = Eventguest.new
  end

  # GET /eventguests/1/edit
  def edit
  end

  # POST /eventguests
  # POST /eventguests.json
  def create
    @eventguest = Eventguest.new(eventguest_params)

    respond_to do |format|
      if @eventguest.save
        format.html { redirect_to @eventguest, notice: 'Eventguest was successfully created.' }
        format.json { render :show, status: :created, location: @eventguest }
      else
        format.html { render :new }
        format.json { render json: @eventguest.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /eventguests/1
  # PATCH/PUT /eventguests/1.json
  def update
    respond_to do |format|
      if @eventguest.update(eventguest_params)
        format.html { redirect_to @eventguest, notice: 'Eventguest was successfully updated.' }
        format.json { render :show, status: :ok, location: @eventguest }
      else
        format.html { render :edit }
        format.json { render json: @eventguest.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /eventguests/1
  # DELETE /eventguests/1.json
  def destroy
    @eventguest.destroy
    respond_to do |format|
      format.html { redirect_to eventguests_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_eventguest
      @eventguest = Eventguest.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def eventguest_params
      params.require(:eventguest).permit(:event_id, :user_id, :type_id, :extras, :attended)
    end
end
