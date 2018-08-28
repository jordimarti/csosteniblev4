class CasPracticsController < ApplicationController
  before_action :set_cas_practic, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:new, :edit, :update, :destroy]

  # GET /cas_practics
  # GET /cas_practics.json
  def index
    @cas_practics = CasPractic.where(visible: true)
  end

  def llistat
    if current_user.role == 'editor'
      @cas_practics = CasPractic.all
    else
      @cas_practics = CasPractic.where(user_id: current_user.id)
    end
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

  def edit_ca
    @cas_practic = CasPractic.find(params[:cas_practics_id])
  end

  def edit_es
    @cas_practic = CasPractic.find(params[:cas_practics_id])
  end

  def edit_en
    @cas_practic = CasPractic.find(params[:cas_practics_id])
  end

  # POST /cas_practics
  # POST /cas_practics.json
  def create
    @cas_practic = CasPractic.new(cas_practic_params)

    @cas_practic.user_id = current_user.id
    @cas_practic.visible = false
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
        format.html { redirect_to cas_practics_llistat_path, notice: 'Cas practic was successfully updated.' }
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
      params.require(:cas_practic).permit(:titol_ca, :resum_ca, :permalink_ca, :descripcio_ca, :emplacament_ca, :arquitectura_ca, :materials_ca, :energia_ca, :aigua_ca, :certificacions_ca, :arquitectes_ca, :emplacament_ca, :any_construccio_ca, :us_edifici_ca, :tipus_promocio_ca, :titol_es, :resum_es, :permalink_es, :descripcio_es, :emplacament_es, :arquitectura_es, :materials_es, :energia_es, :aigua_es, :certificacions_es, :arquitectes_es, :emplacament_es, :any_construccio_es, :us_edifici_es, :tipus_promocio_es, :titol_en, :resum_en, :permalink_en, :descripcio_en, :emplacament_en, :arquitectura_en, :materials_en, :energia_en, :aigua_en, :certificacions_en, :arquitectes_en, :emplacament_en, :any_construccio_en, :us_edifici_en, :tipus_promocio_en, :text_imatge_cas_principal_ca, :text_imatge_cas_1_ca, :text_imatge_cas_2_ca, :text_imatge_cas_3_ca, :text_imatge_cas_4_ca, :text_imatge_cas_principal_es, :text_imatge_cas_1_es, :text_imatge_cas_2_es, :text_imatge_cas_3_es, :text_imatge_cas_4_es, :text_imatge_cas_principal_en, :text_imatge_cas_1_en, :text_imatge_cas_2_en, :text_imatge_cas_3_en, :text_imatge_cas_4_en, :imatge_cas_principal, :imatge_cas_1, :imatge_cas_2, :imatge_cas_3, :imatge_cas_4, :visible)
    end
end
