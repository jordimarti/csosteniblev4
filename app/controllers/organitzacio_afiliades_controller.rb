class OrganitzacioAfiliadesController < ApplicationController
  before_action :set_organitzacio_afiliada, only: [:show, :edit, :update, :destroy]

  # GET /organitzacio_afiliades
  # GET /organitzacio_afiliades.json
  def index
    @organitzacio_afiliades = OrganitzacioAfiliada.all
  end

  # GET /organitzacio_afiliades/1
  # GET /organitzacio_afiliades/1.json
  def show
  end

  # GET /organitzacio_afiliades/new
  def new
    @organitzacio_afiliada = OrganitzacioAfiliada.new
  end

  # GET /organitzacio_afiliades/1/edit
  def edit
  end

  # POST /organitzacio_afiliades
  # POST /organitzacio_afiliades.json
  def create
    @organitzacio_afiliada = OrganitzacioAfiliada.new(organitzacio_afiliada_params)

    respond_to do |format|
      if @organitzacio_afiliada.save
        format.html { redirect_to @organitzacio_afiliada, notice: 'Organitzacio afiliada was successfully created.' }
        format.json { render :show, status: :created, location: @organitzacio_afiliada }
      else
        format.html { render :new }
        format.json { render json: @organitzacio_afiliada.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /organitzacio_afiliades/1
  # PATCH/PUT /organitzacio_afiliades/1.json
  def update
    respond_to do |format|
      if @organitzacio_afiliada.update(organitzacio_afiliada_params)
        format.html { redirect_to @organitzacio_afiliada, notice: 'Organitzacio afiliada was successfully updated.' }
        format.json { render :show, status: :ok, location: @organitzacio_afiliada }
      else
        format.html { render :edit }
        format.json { render json: @organitzacio_afiliada.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /organitzacio_afiliades/1
  # DELETE /organitzacio_afiliades/1.json
  def destroy
    @organitzacio_afiliada.destroy
    respond_to do |format|
      format.html { redirect_to organitzacio_afiliades_url, notice: 'Organitzacio afiliada was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_organitzacio_afiliada
      @organitzacio_afiliada = OrganitzacioAfiliada.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def organitzacio_afiliada_params
      params.require(:organitzacio_afiliada).permit(:numero_membre, :nom, :dades, :link_iso, :tipus, :imatge_organitzacio)
    end
end
