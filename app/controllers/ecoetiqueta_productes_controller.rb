class EcoetiquetaProductesController < ApplicationController
  before_action :set_ecoetiqueta_producte, only: [:show, :edit, :update, :destroy]

  # GET /ecoetiqueta_productes
  # GET /ecoetiqueta_productes.json
  def index
    @ecoetiqueta_productes = EcoetiquetaProducte.all
  end

  # GET /ecoetiqueta_productes/1
  # GET /ecoetiqueta_productes/1.json
  def show
  end

  # GET /ecoetiqueta_productes/new
  def new
    @ecoetiqueta_producte = EcoetiquetaProducte.new
  end

  # GET /ecoetiqueta_productes/1/edit
  def edit
  end

  # POST /ecoetiqueta_productes
  # POST /ecoetiqueta_productes.json
  def create
    @ecoetiqueta_producte = EcoetiquetaProducte.new(ecoetiqueta_producte_params)

    respond_to do |format|
      if @ecoetiqueta_producte.save
        format.html { redirect_to @ecoetiqueta_producte, notice: 'Ecoetiqueta producte was successfully created.' }
        format.json { render :show, status: :created, location: @ecoetiqueta_producte }
      else
        format.html { render :new }
        format.json { render json: @ecoetiqueta_producte.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ecoetiqueta_productes/1
  # PATCH/PUT /ecoetiqueta_productes/1.json
  def update
    respond_to do |format|
      if @ecoetiqueta_producte.update(ecoetiqueta_producte_params)
        format.html { redirect_to @ecoetiqueta_producte, notice: 'Ecoetiqueta producte was successfully updated.' }
        format.json { render :show, status: :ok, location: @ecoetiqueta_producte }
      else
        format.html { render :edit }
        format.json { render json: @ecoetiqueta_producte.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ecoetiqueta_productes/1
  # DELETE /ecoetiqueta_productes/1.json
  def destroy
    @ecoetiqueta_producte.destroy
    respond_to do |format|
      format.html { redirect_to ecoetiqueta_productes_url, notice: 'Ecoetiqueta producte was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ecoetiqueta_producte
      @ecoetiqueta_producte = EcoetiquetaProducte.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ecoetiqueta_producte_params
      params.require(:ecoetiqueta_producte).permit(:producte_id, :ecoetiqueta_id)
    end
end
