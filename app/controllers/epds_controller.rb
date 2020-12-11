class EpdsController < ApplicationController
  before_action :set_epd, only: [:show, :edit, :update, :destroy]

  # GET /epds
  # GET /epds.json
  def index
    @epds = Epd.all
  end

  # GET /epds/1
  # GET /epds/1.json
  def show
  end

  # GET /epds/new
  def new
    @epd = Epd.new
    @epd.epd_indicators.build(indicator: 'CRU', a1_a3: 0, a4: 0, a5: 0)
    @epd.epd_indicators.build(indicator: 'AEE', a1_a3: 0, a4: 0, a5: 0)
  end

  # GET /epds/1/edit
  def edit
  
  end

  # POST /epds
  # POST /epds.json
  def create
    @epd = Epd.new(epd_params)

    if @epd.save
      render :edit
    else
      render :new
    end
  end

  # PATCH/PUT /epds/1
  # PATCH/PUT /epds/1.json
  def update
    respond_to do |format|
      if @epd.update(epd_params)
        format.html { redirect_to @epd, notice: 'Epd was successfully updated.' }
        format.json { render :show, status: :ok, location: @epd }
      else
        format.html { render :edit }
        format.json { render json: @epd.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /epds/1
  # DELETE /epds/1.json
  def destroy
    @epd.destroy
    respond_to do |format|
      format.html { redirect_to epds_url, notice: 'Epd was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_epd
      @epd = Epd.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def epd_params
      params.require(:epd).permit(:name, :classification, :general_comment, :data_set_lca_report, :generic_data_uncertaintiy_loads, :description_generic_data_uncertainty_loads, :scenario_name, :scenario_default, :scenario_group, :scenario_description, :module_name, :module_product_system_id, :reference_flow, :functional_unit, :reference_year, :data_set_valid_until, :time_representativeness_description, :location, :geographical_representativeness_description, :technology_description, :technical_purpose_of_product, :pictogram_of_technology, :flow_diagram_picture, :lca_methodology_report, :subtype, :data_sources, :use_advise_for_data_set, :type_of_review, :review_details, :reviewer_name, :complete_review_report, :compliance_system_name, :data_set_format, :data_entry_by, :date_of_last_revision, :issuer, :registration_number, :owner_of_data_set, :copyright, epd_indicators_attributes: [:id, :epd_id, :indicator, :unit, :a1_a3, :a4, :a5, :b1, :b2, :b3, :b4, :b5, :b6, :b7, :c1, :c2, :c3, :c4, :d])
    end
end
