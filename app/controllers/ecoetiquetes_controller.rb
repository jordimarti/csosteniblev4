class EcoetiquetesController < ApplicationController
  before_action :set_ecoetiqueta, only: [:show, :edit, :update, :destroy]

  # GET /ecoetiquetes
  # GET /ecoetiquetes.json
  def index
    @ecoetiquetes = Ecoetiqueta.all
  end

  # GET /ecoetiquetes/1
  # GET /ecoetiquetes/1.json
  def show
  end

  # GET /ecoetiquetes/new
  def new
    @ecoetiqueta = Ecoetiqueta.new
  end

  # GET /ecoetiquetes/1/edit
  def edit
  end

  # POST /ecoetiquetes
  # POST /ecoetiquetes.json
  def create
    @ecoetiqueta = Ecoetiqueta.new(ecoetiqueta_params)

    respond_to do |format|
      if @ecoetiqueta.save
        format.html { redirect_to @ecoetiqueta, notice: 'Ecoetiqueta was successfully created.' }
        format.json { render :show, status: :created, location: @ecoetiqueta }
      else
        format.html { render :new }
        format.json { render json: @ecoetiqueta.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ecoetiquetes/1
  # PATCH/PUT /ecoetiquetes/1.json
  def update
    respond_to do |format|
      if @ecoetiqueta.update(ecoetiqueta_params)
        format.html { redirect_to @ecoetiqueta, notice: 'Ecoetiqueta was successfully updated.' }
        format.json { render :show, status: :ok, location: @ecoetiqueta }
      else
        format.html { render :edit }
        format.json { render json: @ecoetiqueta.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ecoetiquetes/1
  # DELETE /ecoetiquetes/1.json
  def destroy
    @ecoetiqueta.destroy
    respond_to do |format|
      format.html { redirect_to ecoetiquetes_url, notice: 'Ecoetiqueta was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ecoetiqueta
      @ecoetiqueta = Ecoetiqueta.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ecoetiqueta_params
      params.require(:ecoetiqueta).permit(:nom_ca, :nom_es, :nom_en)
    end
end
