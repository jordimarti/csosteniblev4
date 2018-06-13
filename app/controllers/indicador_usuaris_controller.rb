class IndicadorUsuarisController < ApplicationController
  before_action :set_indicador_usuari, only: [:show, :edit, :update, :destroy]

  # GET /indicador_usuaris
  # GET /indicador_usuaris.json
  def index
    @indicador_usuaris = IndicadorUsuari.all
  end

  # GET /indicador_usuaris/1
  # GET /indicador_usuaris/1.json
  def show
  end

  # GET /indicador_usuaris/new
  def new
    @indicador_usuari = IndicadorUsuari.new
  end

  # GET /indicador_usuaris/1/edit
  def edit
  end

  # POST /indicador_usuaris
  # POST /indicador_usuaris.json
  def create
    @indicador_usuari = IndicadorUsuari.new(indicador_usuari_params)

    respond_to do |format|
      if @indicador_usuari.save
        format.html { redirect_to @indicador_usuari, notice: 'Indicador usuari was successfully created.' }
        format.json { render :show, status: :created, location: @indicador_usuari }
      else
        format.html { render :new }
        format.json { render json: @indicador_usuari.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /indicador_usuaris/1
  # PATCH/PUT /indicador_usuaris/1.json
  def update
    respond_to do |format|
      if @indicador_usuari.update(indicador_usuari_params)
        format.html { redirect_to @indicador_usuari, notice: 'Indicador usuari was successfully updated.' }
        format.json { render :show, status: :ok, location: @indicador_usuari }
      else
        format.html { render :edit }
        format.json { render json: @indicador_usuari.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /indicador_usuaris/1
  # DELETE /indicador_usuaris/1.json
  def destroy
    @indicador_usuari.destroy
    respond_to do |format|
      format.html { redirect_to indicador_usuaris_url, notice: 'Indicador usuari was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_indicador_usuari
      @indicador_usuari = IndicadorUsuari.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def indicador_usuari_params
      params.require(:indicador_usuari).permit(:tipus_indicador_id, :producte_dapcons_usuari_id, :etapa, :valor)
    end
end
