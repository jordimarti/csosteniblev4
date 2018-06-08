class TipusDadaInventarisController < ApplicationController
  before_action :set_tipus_dada_inventari, only: [:show, :edit, :update, :destroy]

  # GET /tipus_dada_inventaris
  # GET /tipus_dada_inventaris.json
  def index
    @tipus_dada_inventaris = TipusDadaInventari.all
  end

  # GET /tipus_dada_inventaris/1
  # GET /tipus_dada_inventaris/1.json
  def show
  end

  # GET /tipus_dada_inventaris/new
  def new
    @tipus_dada_inventari = TipusDadaInventari.new
  end

  # GET /tipus_dada_inventaris/1/edit
  def edit
  end

  # POST /tipus_dada_inventaris
  # POST /tipus_dada_inventaris.json
  def create
    @tipus_dada_inventari = TipusDadaInventari.new(tipus_dada_inventari_params)

    respond_to do |format|
      if @tipus_dada_inventari.save
        format.html { redirect_to @tipus_dada_inventari, notice: 'Tipus dada inventari was successfully created.' }
        format.json { render :show, status: :created, location: @tipus_dada_inventari }
      else
        format.html { render :new }
        format.json { render json: @tipus_dada_inventari.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tipus_dada_inventaris/1
  # PATCH/PUT /tipus_dada_inventaris/1.json
  def update
    respond_to do |format|
      if @tipus_dada_inventari.update(tipus_dada_inventari_params)
        format.html { redirect_to @tipus_dada_inventari, notice: 'Tipus dada inventari was successfully updated.' }
        format.json { render :show, status: :ok, location: @tipus_dada_inventari }
      else
        format.html { render :edit }
        format.json { render json: @tipus_dada_inventari.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipus_dada_inventaris/1
  # DELETE /tipus_dada_inventaris/1.json
  def destroy
    @tipus_dada_inventari.destroy
    respond_to do |format|
      format.html { redirect_to tipus_dada_inventaris_url, notice: 'Tipus dada inventari was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tipus_dada_inventari
      @tipus_dada_inventari = TipusDadaInventari.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tipus_dada_inventari_params
      params.require(:tipus_dada_inventari).permit(:nom_ca, :nom_es, :nom_en, :unitats)
    end
end
