class DocumentProductesController < ApplicationController
  before_action :set_document_producte, only: [:show, :edit, :update, :destroy]

  # GET /document_productes
  # GET /document_productes.json
  def index
    @document_productes = DocumentProducte.all
  end

  # GET /document_productes/1
  # GET /document_productes/1.json
  def show
  end

  # GET /document_productes/new
  def new
    @document_producte = DocumentProducte.new
  end

  # GET /document_productes/1/edit
  def edit
  end

  # POST /document_productes
  # POST /document_productes.json
  def create
    @document_producte = DocumentProducte.new(document_producte_params)

    respond_to do |format|
      if @document_producte.save
        format.html { redirect_to @document_producte, notice: 'Document producte was successfully created.' }
        format.json { render :show, status: :created, location: @document_producte }
      else
        format.html { render :new }
        format.json { render json: @document_producte.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /document_productes/1
  # PATCH/PUT /document_productes/1.json
  def update
    respond_to do |format|
      if @document_producte.update(document_producte_params)
        format.html { redirect_to @document_producte, notice: 'Document producte was successfully updated.' }
        format.json { render :show, status: :ok, location: @document_producte }
      else
        format.html { render :edit }
        format.json { render json: @document_producte.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /document_productes/1
  # DELETE /document_productes/1.json
  def destroy
    @document_producte.destroy
    respond_to do |format|
      format.html { redirect_to document_productes_url, notice: 'Document producte was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_document_producte
      @document_producte = DocumentProducte.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def document_producte_params
      params.require(:document_producte).permit(:producte_id, :nom_ca, :nom_es, :nom_en, :arxiu_document)
    end
end
