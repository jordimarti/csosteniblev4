class MkCategoriesController < ApplicationController
  before_action :set_mk_categoria, only: [:show, :edit, :update, :destroy]

  # GET /mk_categories
  # GET /mk_categories.json
  def index
    @mk_categories = MkCategoria.all
  end

  # GET /mk_categories/1
  # GET /mk_categories/1.json
  def show
  end

  # GET /mk_categories/new
  def new
    @mk_categoria = MkCategoria.new
  end

  # GET /mk_categories/1/edit
  def edit
  end

  # POST /mk_categories
  # POST /mk_categories.json
  def create
    @mk_categoria = MkCategoria.new(mk_categoria_params)

    respond_to do |format|
      if @mk_categoria.save
        format.html { redirect_to @mk_categoria, notice: 'Mk categoria was successfully created.' }
        format.json { render :show, status: :created, location: @mk_categoria }
      else
        format.html { render :new }
        format.json { render json: @mk_categoria.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mk_categories/1
  # PATCH/PUT /mk_categories/1.json
  def update
    respond_to do |format|
      if @mk_categoria.update(mk_categoria_params)
        format.html { redirect_to @mk_categoria, notice: 'Mk categoria was successfully updated.' }
        format.json { render :show, status: :ok, location: @mk_categoria }
      else
        format.html { render :edit }
        format.json { render json: @mk_categoria.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mk_categories/1
  # DELETE /mk_categories/1.json
  def destroy
    @mk_categoria.destroy
    respond_to do |format|
      format.html { redirect_to mk_categories_url, notice: 'Mk categoria was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mk_categoria
      @mk_categoria = MkCategoria.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mk_categoria_params
      params.require(:mk_categoria).permit(:user_id, :valida, :nom_ca, :nom_es, :nom_en, :pare)
    end
end
