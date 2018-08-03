class ProducteDapconsController < ApplicationController
  before_action :set_producte_dapcons, only: [:show, :edit, :update, :destroy]

  # GET /producte_dapcons
  # GET /producte_dapcons.json
  def index
    @producte_dapcons = ProducteDapcons.all.order(validesa_inici: :asc)
  end

  # GET /producte_dapcons/1
  # GET /producte_dapcons/1.json
  def show
  end

  # GET /producte_dapcons/new
  def new
    @producte_dapcons = ProducteDapcons.new
  end

  # GET /producte_dapcons/1/edit
  def edit
  end

  # POST /producte_dapcons
  # POST /producte_dapcons.json
  def create
    @producte_dapcons = ProducteDapcons.new(producte_dapcons_params)

    respond_to do |format|
      if @producte_dapcons.save
        format.html { redirect_to @producte_dapcons, notice: 'Producte dapcons was successfully created.' }
        format.json { render :show, status: :created, location: @producte_dapcons }
      else
        format.html { render :new }
        format.json { render json: @producte_dapcons.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /producte_dapcons/1
  # PATCH/PUT /producte_dapcons/1.json
  def update
    respond_to do |format|
      if @producte_dapcons.update(producte_dapcons_params)
        format.html { redirect_to @producte_dapcons, notice: 'Producte dapcons was successfully updated.' }
        format.json { render :show, status: :ok, location: @producte_dapcons }
      else
        format.html { render :edit }
        format.json { render json: @producte_dapcons.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /producte_dapcons/1
  # DELETE /producte_dapcons/1.json
  def destroy
    @producte_dapcons.destroy
    respond_to do |format|
      format.html { redirect_to producte_dapcons_index_url, notice: 'Producte dapcons was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_producte_dapcons
      @producte_dapcons = ProducteDapcons.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def producte_dapcons_params
      params.require(:producte_dapcons).permit(:nom_ca, :nom_es, :nom_en, :descripcio_ca, :descripcio_es, :descripcio_en, :identificador, :rcp_ca, :rcp_es, :rcp_en, :validesa_inici, :validesa_fi, :empresa, :categoria_indicadors, :unitat_declarada_ca, :unitat_declarada_es, :unitat_declarada_en, indicadors_attributes: [:id, :tipus_indicador_id, :producte_dapcons_id, :etapa, :valor, :_destroy])
    end
end
