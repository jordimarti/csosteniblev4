class NoticiesController < ApplicationController
  before_action :set_noticia, only: [:show, :edit, :update, :destroy]

  # GET /noticies
  # GET /noticies.json
  def index
    @noticies = Noticia.all.order(created_at: :desc)
  end

  # GET /noticies/1
  # GET /noticies/1.json
  def show
  end

  # GET /noticies/new
  def new
    @noticia = Noticia.new
  end

  # GET /noticies/1/edit
  def edit
  end

  # POST /noticies
  # POST /noticies.json
  def create
    @noticia = Noticia.new(noticia_params)

    respond_to do |format|
      if @noticia.save
        format.html { redirect_to @noticia, notice: 'Noticia was successfully created.' }
        format.json { render :show, status: :created, location: @noticia }
      else
        format.html { render :new }
        format.json { render json: @noticia.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /noticies/1
  # PATCH/PUT /noticies/1.json
  def update
    respond_to do |format|
      if @noticia.update(noticia_params)
        format.html { redirect_to @noticia, notice: 'Noticia was successfully updated.' }
        format.json { render :show, status: :ok, location: @noticia }
      else
        format.html { render :edit }
        format.json { render json: @noticia.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /noticies/1
  # DELETE /noticies/1.json
  def destroy
    @noticia.destroy
    respond_to do |format|
      format.html { redirect_to noticies_url, notice: 'Noticia was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def llistat
    @noticies = Noticia.all
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_noticia
      @noticia = Noticia.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def noticia_params
      params.require(:noticia).permit(:titol_ca, :resum_ca, :permalink_ca, :contingut_ca, :titol_es, :resum_es, :permalink_es, :contingut_es, :titol_en, :resum_en, :permalink_en, :contingut_en, :data, :dapc, :image_data, :imatge_noticia)
    end
end
