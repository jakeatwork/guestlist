class GuestsListsController < ApplicationController
  before_action :set_guests_list, only: [:show, :edit, :update, :destroy]

  # GET /guests_lists
  # GET /guests_lists.json
  def index
    @guests_lists = GuestsList.all
  end

  # GET /guests_lists/1
  # GET /guests_lists/1.json
  def show
  end

  # GET /guests_lists/new
  def new
    @guests_list = GuestsList.new
  end

  # GET /guests_lists/1/edit
  def edit
  end

  # POST /guests_lists
  # POST /guests_lists.json
  def create
    @guests_list = GuestsList.new(guests_list_params)

    respond_to do |format|
      if @guests_list.save
        format.html { redirect_to @guests_list, notice: 'Guests list was successfully created.' }
        format.json { render :show, status: :created, location: @guests_list }
      else
        format.html { render :new }
        format.json { render json: @guests_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /guests_lists/1
  # PATCH/PUT /guests_lists/1.json
  def update
    respond_to do |format|
      if @guests_list.update(guests_list_params)
        format.html { redirect_to @guests_list, notice: 'Guests list was successfully updated.' }
        format.json { render :show, status: :ok, location: @guests_list }
      else
        format.html { render :edit }
        format.json { render json: @guests_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /guests_lists/1
  # DELETE /guests_lists/1.json
  def destroy
    @guests_list.destroy
    respond_to do |format|
      format.html { redirect_to guests_lists_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_guests_list
      @guests_list = GuestsList.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def guests_list_params
      params.require(:guests_list).permit(:guest_id, :list_id)
    end
end
