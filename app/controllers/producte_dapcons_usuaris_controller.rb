class ProducteDapconsUsuarisController < ApplicationController
  before_action :set_producte_dapcons_usuari, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /producte_dapcons_usuaris
  # GET /producte_dapcons_usuaris.json
  def index
    @producte_dapcons_usuaris = ProducteDapconsUsuari.where(user_id: current_user.id).order(created_at: :desc)
  end

  # GET /producte_dapcons_usuaris/1
  # GET /producte_dapcons_usuaris/1.json
  def show
  end

  # GET /producte_dapcons_usuaris/new
  def new
    @producte_dapcons_usuari = ProducteDapconsUsuari.new
  end

  # GET /producte_dapcons_usuaris/1/edit
  def edit
  end

  # POST /producte_dapcons_usuaris
  # POST /producte_dapcons_usuaris.json
  def create
    @producte_dapcons_usuari = ProducteDapconsUsuari.new(producte_dapcons_usuari_params)

    respond_to do |format|
      if @producte_dapcons_usuari.save
        format.html { redirect_to producte_dapcons_usuaris_path, notice: 'Producte dapcons usuari was successfully created.' }
        format.json { render :show, status: :created, location: @producte_dapcons_usuari }
      else
        format.html { render :new }
        format.json { render json: @producte_dapcons_usuari.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /producte_dapcons_usuaris/1
  # PATCH/PUT /producte_dapcons_usuaris/1.json
  def update
    respond_to do |format|
      if @producte_dapcons_usuari.update(producte_dapcons_usuari_params)
        format.html { redirect_to producte_dapcons_usuaris_path, notice: 'Producte dapcons usuari was successfully updated.' }
        format.json { render :show, status: :ok, location: @producte_dapcons_usuari }
      else
        format.html { render :edit }
        format.json { render json: @producte_dapcons_usuari.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /producte_dapcons_usuaris/1
  # DELETE /producte_dapcons_usuaris/1.json
  def destroy
    @producte_dapcons_usuari.destroy
    respond_to do |format|
      format.html { redirect_to producte_dapcons_usuaris_url, notice: 'Producte dapcons usuari was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_producte_dapcons_usuari
      @producte_dapcons_usuari = ProducteDapconsUsuari.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def producte_dapcons_usuari_params
      params.require(:producte_dapcons_usuari).permit(:user_id, :nom, :empresa, :descripcio, :unitat_declarada, indicador_usuaris_attributes: [:id, :tipus_indicador_id, :producte_dapcons_usuari_id, :etapa, :valor, :_destroy])
    end
end
