class DocumentDapconsController < ApplicationController
  before_action :set_document_dapcons, only: [:show, :edit, :update, :destroy]

  # GET /document_dapcons
  # GET /document_dapcons.json
  def index
    @document_dapcons = DocumentDapcons.all
  end

  # GET /document_dapcons/1
  # GET /document_dapcons/1.json
  def show
  end

  # GET /document_dapcons/new
  def new
    @document_dapcons = DocumentDapcons.new
  end

  # GET /document_dapcons/1/edit
  def edit
  end

  # POST /document_dapcons
  # POST /document_dapcons.json
  def create
    @document_dapcons = DocumentDapcons.new(document_dapcons_params)

    respond_to do |format|
      if @document_dapcons.save
        format.html { redirect_to @document_dapcons, notice: 'Document dapcons was successfully created.' }
        format.json { render :show, status: :created, location: @document_dapcons }
      else
        format.html { render :new }
        format.json { render json: @document_dapcons.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /document_dapcons/1
  # PATCH/PUT /document_dapcons/1.json
  def update
    respond_to do |format|
      if @document_dapcons.update(document_dapcons_params)
        format.html { redirect_to @document_dapcons, notice: 'Document dapcons was successfully updated.' }
        format.json { render :show, status: :ok, location: @document_dapcons }
      else
        format.html { render :edit }
        format.json { render json: @document_dapcons.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /document_dapcons/1
  # DELETE /document_dapcons/1.json
  def destroy
    @document_dapcons.destroy
    respond_to do |format|
      format.html { redirect_to document_dapcons_index_url, notice: 'Document dapcons was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_document_dapcons
      @document_dapcons = DocumentDapcons.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def document_dapcons_params
      params.require(:document_dapcons).permit(:producte_dapcons_id, :nom_ca, :nom_es, :nom_en, :idioma, :link)
    end
end
