class CasPracticsController < ApplicationController
  before_action :set_cas_practic, only: [:show, :edit, :update, :destroy]

  # GET /cas_practics
  # GET /cas_practics.json
  def index
    @cas_practics = CasPractic.all
  end

  # GET /cas_practics/1
  # GET /cas_practics/1.json
  def show
  end

  # GET /cas_practics/new
  def new
    @cas_practic = CasPractic.new
  end

  # GET /cas_practics/1/edit
  def edit
  end

  # POST /cas_practics
  # POST /cas_practics.json
  def create
    @cas_practic = CasPractic.new(cas_practic_params)

    respond_to do |format|
      if @cas_practic.save
        format.html { redirect_to @cas_practic, notice: 'Cas practic was successfully created.' }
        format.json { render :show, status: :created, location: @cas_practic }
      else
        format.html { render :new }
        format.json { render json: @cas_practic.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cas_practics/1
  # PATCH/PUT /cas_practics/1.json
  def update
    respond_to do |format|
      if @cas_practic.update(cas_practic_params)
        format.html { redirect_to @cas_practic, notice: 'Cas practic was successfully updated.' }
        format.json { render :show, status: :ok, location: @cas_practic }
      else
        format.html { render :edit }
        format.json { render json: @cas_practic.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cas_practics/1
  # DELETE /cas_practics/1.json
  def destroy
    @cas_practic.destroy
    respond_to do |format|
      format.html { redirect_to cas_practics_url, notice: 'Cas practic was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cas_practic
      @cas_practic = CasPractic.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cas_practic_params
      params.require(:cas_practic).permit(:titol_ca, :resum_ca, :permalink_ca, :descripcio_ca, :emplacament_ca, :arquitectura_ca, :materials_ca, :energia_ca, :aigua_ca, :certificacions_ca, :arquitectes_ca, :emplacament_ca, :any_construccio_ca, :us_edifici_ca, :tipus_promocio_ca, :titol_es, :resum_es, :permalink_es, :descripcio_es, :emplacament_es, :arquitectura_es, :materials_es, :energia_es, :aigua_es, :certificacions_es, :arquitectes_es, :emplacament_es, :any_construccio_es, :us_edifici_es, :tipus_promocio_es, :titol_en, :resum_en, :permalink_en, :descripcio_en, :emplacament_en, :arquitectura_en, :materials_en, :energia_en, :aigua_en, :certificacions_en, :arquitectes_en, :emplacament_en, :any_construccio_en, :us_edifici_en, :tipus_promocio_en)
    end
end
