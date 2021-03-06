class EmpresesController < ApplicationController
  before_action :set_empresa, only: [:show, :edit, :update, :destroy]

  # GET /empreses
  # GET /empreses.json
  def index
    @empreses = Empresa.all
  end

  # GET /empreses/1
  # GET /empreses/1.json
  def show
  end

  # GET /empreses/new
  def new
    @empresa = Empresa.new
  end

  # GET /empreses/1/edit
  def edit
  end

  # POST /empreses
  # POST /empreses.json
  def create
    @empresa = Empresa.new(empresa_params)

    respond_to do |format|
      if @empresa.save
        format.html { redirect_to @empresa, notice: 'Empresa was successfully created.' }
        format.json { render :show, status: :created, location: @empresa }
      else
        format.html { render :new }
        format.json { render json: @empresa.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /empreses/1
  # PATCH/PUT /empreses/1.json
  def update
    respond_to do |format|
      if @empresa.update(empresa_params)
        format.html { redirect_to @empresa, notice: 'Empresa was successfully updated.' }
        format.json { render :show, status: :ok, location: @empresa }
      else
        format.html { render :edit }
        format.json { render json: @empresa.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /empreses/1
  # DELETE /empreses/1.json
  def destroy
    @empresa.destroy
    respond_to do |format|
      format.html { redirect_to empreses_url, notice: 'Empresa was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_empresa
      @empresa = Empresa.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def empresa_params
      params.require(:empresa).permit(:nom, :adreca, :codi_postal, :poblacio, :telefon, :email, :web, :altres)
    end
end
