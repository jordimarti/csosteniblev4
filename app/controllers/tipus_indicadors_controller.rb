class TipusIndicadorsController < ApplicationController
  before_action :set_tipus_indicador, only: [:show, :edit, :update, :destroy]

  # GET /tipus_indicadors
  # GET /tipus_indicadors.json
  def index
    @tipus_indicadors = TipusIndicador.all
  end

  # GET /tipus_indicadors/1
  # GET /tipus_indicadors/1.json
  def show
  end

  # GET /tipus_indicadors/new
  def new
    @tipus_indicador = TipusIndicador.new
  end

  # GET /tipus_indicadors/1/edit
  def edit
  end

  # POST /tipus_indicadors
  # POST /tipus_indicadors.json
  def create
    @tipus_indicador = TipusIndicador.new(tipus_indicador_params)

    respond_to do |format|
      if @tipus_indicador.save
        format.html { redirect_to @tipus_indicador, notice: 'Tipus indicador was successfully created.' }
        format.json { render :show, status: :created, location: @tipus_indicador }
      else
        format.html { render :new }
        format.json { render json: @tipus_indicador.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tipus_indicadors/1
  # PATCH/PUT /tipus_indicadors/1.json
  def update
    respond_to do |format|
      if @tipus_indicador.update(tipus_indicador_params)
        format.html { redirect_to @tipus_indicador, notice: 'Tipus indicador was successfully updated.' }
        format.json { render :show, status: :ok, location: @tipus_indicador }
      else
        format.html { render :edit }
        format.json { render json: @tipus_indicador.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipus_indicadors/1
  # DELETE /tipus_indicadors/1.json
  def destroy
    @tipus_indicador.destroy
    respond_to do |format|
      format.html { redirect_to tipus_indicadors_url, notice: 'Tipus indicador was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tipus_indicador
      @tipus_indicador = TipusIndicador.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tipus_indicador_params
      params.require(:tipus_indicador).permit(:nom_ca, :nom_es, :nom_en, :unitats)
    end
end
