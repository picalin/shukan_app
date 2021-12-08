class ShukansController < ApplicationController
  before_action :set_shukan, only: %i[ show edit update destroy ]

  # GET /shukans or /shukans.json
  def index
    @shukans = Shukan.all
  end

  # GET /shukans/1 or /shukans/1.json
  def show
  end

  # GET /shukans/new
  def new
    @shukan = Shukan.new
  end

  # GET /shukans/1/edit
  def edit
  end

  # POST /shukans or /shukans.json
  def create
    @shukan = Shukan.new(shukan_params)

    respond_to do |format|
      if @shukan.save
        format.html { redirect_to @shukan, notice: "Shukan was successfully created." }
        format.json { render :show, status: :created, location: @shukan }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @shukan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shukans/1 or /shukans/1.json
  def update
    respond_to do |format|
      if @shukan.update(shukan_params)
        format.html { redirect_to @shukan, notice: "Shukan was successfully updated." }
        format.json { render :show, status: :ok, location: @shukan }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @shukan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shukans/1 or /shukans/1.json
  def destroy
    @shukan.destroy
    respond_to do |format|
      format.html { redirect_to shukans_url, notice: "Shukan was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shukan
      @shukan = Shukan.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def shukan_params
      params.require(:shukan).permit(:title, :position, :user_id, :done)
    end
end
