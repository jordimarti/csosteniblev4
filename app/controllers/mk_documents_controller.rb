class MkDocumentsController < ApplicationController
  before_action :set_mk_document, only: [:show, :edit, :update, :destroy]
  respond_to :html, :js

  # GET /mk_documents
  # GET /mk_documents.json
  def index
    @mk_documents = MkDocument.all
  end

  # GET /mk_documents/1
  # GET /mk_documents/1.json
  def show
  end

  # GET /mk_documents/new
  def new
    @mk_document = MkDocument.new
  end

  # GET /mk_documents/1/edit
  def edit
  end

  # POST /mk_documents
  # POST /mk_documents.json
  def create
    @mk_document = MkDocument.new(mk_document_params)

    respond_to do |format|
      if @mk_document.save
        format.html { redirect_to @mk_document, notice: 'Mk document was successfully created.' }
        format.json { render :show, status: :created, location: @mk_document }
      else
        format.html { render :new }
        format.json { render json: @mk_document.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mk_documents/1
  # PATCH/PUT /mk_documents/1.json
  def update
    respond_to do |format|
      if @mk_document.update(mk_document_params)
        format.html { redirect_to @mk_document, notice: 'Mk document was successfully updated.' }
        format.json { render :show, status: :ok, location: @mk_document }
      else
        format.html { render :edit }
        format.json { render json: @mk_document.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mk_documents/1
  # DELETE /mk_documents/1.json
  def destroy
    @mk_document.destroy
    respond_to do |format|
      format.html { redirect_to mk_documents_url, notice: 'Mk document was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mk_document
      @mk_document = MkDocument.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mk_document_params
      params.require(:mk_document).permit(:user_id, :mk_product_id, :nom, :document)
    end
end
