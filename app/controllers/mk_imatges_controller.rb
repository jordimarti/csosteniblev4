class MkImatgesController < ApplicationController
  before_action :set_mk_imatge, only: [:show, :edit, :update, :destroy]

  # GET /mk_imatges
  # GET /mk_imatges.json
  def index
    @mk_imatges = MkImatge.all
  end

  # GET /mk_imatges/1
  # GET /mk_imatges/1.json
  def show
  end

  # GET /mk_imatges/new
  def new
    @mk_imatge = MkImatge.new
  end

  # GET /mk_imatges/1/edit
  def edit
  end

  # POST /mk_imatges
  # POST /mk_imatges.json
  def create
    @mk_imatge = MkImatge.new(mk_imatge_params)

    respond_to do |format|
      if @mk_imatge.save
        format.html { redirect_to @mk_imatge, notice: 'Mk imatge was successfully created.' }
        format.json { render :show, status: :created, location: @mk_imatge }
      else
        format.html { render :new }
        format.json { render json: @mk_imatge.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mk_imatges/1
  # PATCH/PUT /mk_imatges/1.json
  def update
    respond_to do |format|
      if @mk_imatge.update(mk_imatge_params)
        format.html { redirect_to @mk_imatge, notice: 'Mk imatge was successfully updated.' }
        format.json { render :show, status: :ok, location: @mk_imatge }
      else
        format.html { render :edit }
        format.json { render json: @mk_imatge.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mk_imatges/1
  # DELETE /mk_imatges/1.json
  def destroy
    @mk_imatge.destroy
    respond_to do |format|
      format.html { redirect_to mk_imatges_url, notice: 'Mk imatge was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mk_imatge
      @mk_imatge = MkImatge.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mk_imatge_params
      params.require(:mk_imatge).permit(:user_id, :mk_product_id, :descripcio, :mk_product_imatge)
    end
end
