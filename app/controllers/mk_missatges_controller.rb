class MkMissatgesController < ApplicationController
  before_action :set_mk_missatge, only: [:show, :edit, :update, :destroy]

  # GET /mk_missatges
  # GET /mk_missatges.json
  def index
    @mk_missatges = MkMissatge.all
  end

  # GET /mk_missatges/1
  # GET /mk_missatges/1.json
  def show
  end

  # GET /mk_missatges/new
  def new
    @mk_missatge = MkMissatge.new
  end

  # GET /mk_missatges/1/edit
  def edit
  end

  # POST /mk_missatges
  # POST /mk_missatges.json
  def create
    @mk_missatge = MkMissatge.new(mk_missatge_params)

    respond_to do |format|
      if @mk_missatge.save
        #Dades per enviar el correu
        @mkuser = MkUser.where(user_id: @mk_missatge.user_id).last
        @destinatari = MkUser.where(user_id: @mk_missatge.destinatari).last
        @producte = MkProduct.find(@mk_missatge.mk_product_id)
        @missatge = @mk_missatge.missatge

        SendMkMessageMailer.send_missatge(@mkuser, @destinatari, @producte, @missatge).deliver
      
        #Per fer la redirecció hem de saber si el missatge l'escriu el comprador o el venedor
        producte = MkProduct.find(@mk_missatge.mk_product_id)
        if current_user.id == producte.user_id
          if @mk_missatge.mobile == true
            format.html { redirect_to mobile_marketcons_missatges_path(mk_product_id: @mk_missatge.mk_product_id, user_id: @mk_missatge.destinatari), notice: 'Mk missatge was successfully created.' }
          else
            format.html { redirect_to marketcons_missatges_path(mk_product_id: @mk_missatge.mk_product_id, user_id: @mk_missatge.destinatari), notice: 'Mk missatge was successfully created.' }
          end
        else
          if @mk_missatge.mobile == true
            format.html { redirect_to mobile_marketcons_missatges_path(mk_product_id: @mk_missatge.mk_product_id, user_id: @mk_missatge.user_id), notice: 'Mk missatge was successfully created.' }
          else
            format.html { redirect_to marketcons_missatges_path(mk_product_id: @mk_missatge.mk_product_id, user_id: @mk_missatge.user_id), notice: 'Mk missatge was successfully created.' }
          end
        end
        format.json { render :show, status: :created, location: @mk_missatge }
      else
        format.html { render :new }
        format.json { render json: @mk_missatge.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mk_missatges/1
  # PATCH/PUT /mk_missatges/1.json
  def update
    respond_to do |format|
      if @mk_missatge.update(mk_missatge_params)
        format.html { redirect_to marketcons_missatges_path(mk_product_id: @mk_missatge.mk_product_id), notice: 'Mk missatge was successfully updated.' }
        format.json { render :show, status: :ok, location: @mk_missatge }
      else
        format.html { render :edit }
        format.json { render json: @mk_missatge.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mk_missatges/1
  # DELETE /mk_missatges/1.json
  def destroy
    @mk_missatge.destroy
    respond_to do |format|
      format.html { redirect_to mk_missatges_url, notice: 'Mk missatge was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mk_missatge
      @mk_missatge = MkMissatge.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mk_missatge_params
      params.require(:mk_missatge).permit(:user_id, :destinatari, :missatge, :mk_product_id, :mobile)
    end
end
