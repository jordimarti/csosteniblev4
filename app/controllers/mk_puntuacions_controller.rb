class MkPuntuacionsController < ApplicationController
  before_action :set_mk_puntuacio, only: [:show, :edit, :update, :destroy]

  # GET /mk_puntuacions
  # GET /mk_puntuacions.json
  def index
    @mk_puntuacions = MkPuntuacio.all
  end

  # GET /mk_puntuacions/1
  # GET /mk_puntuacions/1.json
  def show
  end

  # GET /mk_puntuacions/new
  def new
    @mk_puntuacio = MkPuntuacio.new
  end

  # GET /mk_puntuacions/1/edit
  def edit
  end

  # POST /mk_puntuacions
  # POST /mk_puntuacions.json
  def create
    @mk_puntuacio = MkPuntuacio.new(mk_puntuacio_params)

    respond_to do |format|
      if @mk_puntuacio.save
        format.html { redirect_to @mk_puntuacio, notice: 'Mk puntuacio was successfully created.' }
        format.json { render :show, status: :created, location: @mk_puntuacio }
      else
        format.html { render :new }
        format.json { render json: @mk_puntuacio.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mk_puntuacions/1
  # PATCH/PUT /mk_puntuacions/1.json
  def update
    respond_to do |format|
      if @mk_puntuacio.update(mk_puntuacio_params)
        format.html { redirect_to @mk_puntuacio, notice: 'Mk puntuacio was successfully updated.' }
        format.json { render :show, status: :ok, location: @mk_puntuacio }
      else
        format.html { render :edit }
        format.json { render json: @mk_puntuacio.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mk_puntuacions/1
  # DELETE /mk_puntuacions/1.json
  def destroy
    @mk_puntuacio.destroy
    respond_to do |format|
      format.html { redirect_to mk_puntuacions_url, notice: 'Mk puntuacio was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mk_puntuacio
      @mk_puntuacio = MkPuntuacio.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mk_puntuacio_params
      params.require(:mk_puntuacio).permit(:user_id, :mk_user_id, :puntuacio)
    end
end
