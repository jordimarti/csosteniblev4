class MkProductsController < ApplicationController
  before_action :set_mk_product, only: [:show, :edit, :update, :destroy]

  # GET /mk_products
  # GET /mk_products.json
  def index
    @mk_products = MkProduct.all
  end

  # GET /mk_products/1
  # GET /mk_products/1.json
  def show
  end

  # GET /mk_products/new
  def new
    @mk_product = MkProduct.new
  end

  # GET /mk_products/1/edit
  def edit
  end

  # POST /mk_products
  # POST /mk_products.json
  def create
    @mk_product = MkProduct.new(mk_product_params)

    respond_to do |format|
      if @mk_product.save
        format.html { redirect_to @mk_product, notice: 'Mk product was successfully created.' }
        format.json { render :show, status: :created, location: @mk_product }
      else
        format.html { render :new }
        format.json { render json: @mk_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mk_products/1
  # PATCH/PUT /mk_products/1.json
  def update
    respond_to do |format|
      if @mk_product.update(mk_product_params)
        format.html { redirect_to @mk_product, notice: 'Mk product was successfully updated.' }
        format.json { render :show, status: :ok, location: @mk_product }
      else
        format.html { render :edit }
        format.json { render json: @mk_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mk_products/1
  # DELETE /mk_products/1.json
  def destroy
    @mk_product.destroy
    respond_to do |format|
      format.html { redirect_to mk_products_url, notice: 'Mk product was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mk_product
      @mk_product = MkProduct.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mk_product_params
      params.require(:mk_product).permit(:user_id, :nom, :descripcio, :categoria, :adreca, :codi_postal, :municipi, :latitud, :longitud, :preu, :visible, :venut, :aprovat, :pes, :unitats, :enviament, :adreca_oculta)
    end
end
