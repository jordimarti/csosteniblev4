class EpdIndicatorsController < ApplicationController
  before_action :set_epd_indicator, only: [:show, :edit, :update, :destroy]

  # GET /epd_indicators
  # GET /epd_indicators.json
  def index
    @epd_indicators = EpdIndicator.all
  end

  # GET /epd_indicators/1
  # GET /epd_indicators/1.json
  def show
  end

  # GET /epd_indicators/new
  def new
    @epd_indicator = EpdIndicator.new
  end

  # GET /epd_indicators/1/edit
  def edit
  end

  # POST /epd_indicators
  # POST /epd_indicators.json
  def create
    @epd_indicator = EpdIndicator.new(epd_indicator_params)

    respond_to do |format|
      if @epd_indicator.save
        format.html { redirect_to @epd_indicator, notice: 'Epd indicator was successfully created.' }
        format.json { render :show, status: :created, location: @epd_indicator }
      else
        format.html { render :new }
        format.json { render json: @epd_indicator.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /epd_indicators/1
  # PATCH/PUT /epd_indicators/1.json
  def update
    respond_to do |format|
      if @epd_indicator.update(epd_indicator_params)
        format.html { redirect_to @epd_indicator, notice: 'Epd indicator was successfully updated.' }
        format.json { render :show, status: :ok, location: @epd_indicator }
      else
        format.html { render :edit }
        format.json { render json: @epd_indicator.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /epd_indicators/1
  # DELETE /epd_indicators/1.json
  def destroy
    @epd_indicator.destroy
    respond_to do |format|
      format.html { redirect_to epd_indicators_url, notice: 'Epd indicator was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_epd_indicator
      @epd_indicator = EpdIndicator.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def epd_indicator_params
      params.require(:epd_indicator).permit(:epd_id, :indicator, :unit, :a1_a3, :a4, :a5, :b1, :b2, :b3, :b4, :b5, :b6, :b7, :c1, :c2, :c3, :c4, :d)
    end
end
