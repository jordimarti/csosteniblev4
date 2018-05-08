class CategoriaProductesController < ApplicationController
  before_action :set_categoria_producte, only: [:show, :edit, :update, :destroy]

  # GET /categoria_productes
  # GET /categoria_productes.json
  def index
    @categoria_productes = CategoriaProducte.all
  end

  # GET /categoria_productes/1
  # GET /categoria_productes/1.json
  def show
  end

  # GET /categoria_productes/new
  def new
    @categoria_producte = CategoriaProducte.new
  end

  # GET /categoria_productes/1/edit
  def edit
  end

  # POST /categoria_productes
  # POST /categoria_productes.json
  def create
    @categoria_producte = CategoriaProducte.new(categoria_producte_params)

    respond_to do |format|
      if @categoria_producte.save
        format.html { redirect_to @categoria_producte, notice: 'Categoria producte was successfully created.' }
        format.json { render :show, status: :created, location: @categoria_producte }
      else
        format.html { render :new }
        format.json { render json: @categoria_producte.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /categoria_productes/1
  # PATCH/PUT /categoria_productes/1.json
  def update
    respond_to do |format|
      if @categoria_producte.update(categoria_producte_params)
        format.html { redirect_to @categoria_producte, notice: 'Categoria producte was successfully updated.' }
        format.json { render :show, status: :ok, location: @categoria_producte }
      else
        format.html { render :edit }
        format.json { render json: @categoria_producte.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /categoria_productes/1
  # DELETE /categoria_productes/1.json
  def destroy
    @categoria_producte.destroy
    respond_to do |format|
      format.html { redirect_to categoria_productes_url, notice: 'Categoria producte was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_categoria_producte
      @categoria_producte = CategoriaProducte.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def categoria_producte_params
      params.require(:categoria_producte).permit(:producte_id, :categoria_id)
    end
end
