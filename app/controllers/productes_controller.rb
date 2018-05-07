class ProductesController < ApplicationController
  before_action :set_producte, only: [:show, :edit, :update, :destroy]

  def index
    @productes = Producte.all
  end

  def show
  end

  def new
    @producte = Producte.new
    #2.times { @producte.ecoetiqueta_productes.build }
  end

  def edit
    #@producte = Producte.find_by(id: params[:id])
  end

  def create
    @producte = Producte.new(producte_params)

    respond_to do |format|
      if @producte.save
        format.html { redirect_to @producte, notice: 'Producte was successfully created.' }
        format.json { render :show, status: :created, location: @producte }
      else
        format.html { render :new }
        format.json { render json: @producte.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    #@producte = Producte.find_by(id: params[:id])
    if @producte.update_attributes(producte_params)
      redirect_to productes_url
    else
      render :edit
    end
  end

  # DELETE /productes/1
  # DELETE /productes/1.json
  def destroy
    @producte.destroy
    respond_to do |format|
      format.html { redirect_to productes_url, notice: 'Producte was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_producte
      @producte = Producte.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def producte_params
      params.require(:producte).permit(:nom_ca, :nom_es, :nom_en, :descripcio_ca, :descripcio_es, :descripcio_en, :caracteristiques_ca, :caracteristiques_es, :caracteristiques_en, :aplicacio_ca, :aplicacio_es, :aplicacio_en, :disponibilitat_ca, :disponibilitat_es, :disponibilitat_en, :destacats_ca, :destacats_es, :destacats_en, :valoracio, :ambit, :visible, :imatge_producte, ecoetiqueta_productes_attributes: [:id, :producte_id, :ecoetiqueta_id, :_destroy])
    end
end
