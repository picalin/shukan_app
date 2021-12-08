class ShukansController < ApplicationController
  before_action :authenticate_user!
  before_action :set_shukan, only: %i[ show edit update destroy sort]

  # GET /shukans or /shukans.json
  def index
    #current_userのshukanをすべてとってくる
    @shukans = current_user.shukan.all
  end

  # GET /shukans/1 or /shukans/1.json
  # def show
  # end

  # GET /shukans/new
  def new
    @shukan = current_user.shukan.new
  end

  # GET /shukans/1/edit
  def edit
  end

  # POST /shukans or /shukans.json
  def create
    @shukan = current_user.shukan.new(shukan_params)

    if @shukan.save
      # format.html { redirect_to @shukan, notice: "Shukan was successfully created." }
      # format.json { render :show, status: :created, location: @shukan }
      @status = true
    else
      # format.html { render :new, status: :unprocessable_entity }
      # format.json { render json: @shukan.errors, status: :unprocessable_entity }
      @status = false
    end
  end

  # PATCH/PUT /shukans/1 or /shukans/1.json
  def update
    if @shukan.update(shukan_params)
      # format.html { redirect_to @shukan, notice: "Shukan was successfully updated." }
      # format.json { render :show, status: :ok, location: @shukan }
      @status = true
    else
      # format.html { render :edit, status: :unprocessable_entity }
      # format.json { render json: @shukan.errors, status: :unprocessable_entity }
      @status = false
    end
  end

  # DELETE /shukans/1 or /shukans/1.json
  def destroy
    @shukan.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shukan
      @shukan = current_user.shukan.find_by(params[:id])
      # @goalがないときgoals_urlにリダイレクト
      redirect_to(goals_url, alert: "ERROR!!") if @goal.blank?
    end

    # Only allow a list of trusted parameters through.
    def shukan_params
      params.require(:shukan).permit(:title, :position, :user_id, :done)
    end
end
