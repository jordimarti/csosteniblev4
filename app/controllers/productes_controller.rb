class ProductesController < ApplicationController
  before_action :set_producte, only: [:show, :edit, :update, :destroy]

  def index
    @menu_productes_actiu = params[:categoria]
    productes_categoria = CategoriaProducte.where(categoria_id: params[:categoria]).pluck(:producte_id)
    @seleccio_productes = Producte.where(id: productes_categoria).order("created_at DESC")
  end

  def show
  end

  def new
    @producte = Producte.new
  end

  def edit
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
    if @producte.update_attributes(producte_params)
      redirect_to productes_url
    else
      render :edit
    end
  end

  def destroy
    @producte.destroy
    respond_to do |format|
      format.html { redirect_to productes_url, notice: 'Producte was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_producte
      @producte = Producte.find(params[:id])
    end

    def producte_params
      params.require(:producte).permit(:empresa_id, :nom_ca, :nom_es, :nom_en, :descripcio_ca, :descripcio_es, :descripcio_en, :caracteristiques_ca, :caracteristiques_es, :caracteristiques_en, :aplicacio_ca, :aplicacio_es, :aplicacio_en, :disponibilitat_ca, :disponibilitat_es, :disponibilitat_en, :destacats_ca, :destacats_es, :destacats_en, :valoracio, :ambit, :visible, :imatge_producte, ecoetiqueta_productes_attributes: [:id, :producte_id, :ecoetiqueta_id, :_destroy], document_productes_attributes: [:id, :producte_id, :nom_ca, :nom_es, :nom_en, :arxiu_document, :_destroy], categoria_productes_attributes: [:id, :producte_id, :categoria_id, :_destroy])
    end
end
