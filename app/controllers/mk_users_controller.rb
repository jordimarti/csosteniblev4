class MkUsersController < ApplicationController
  before_action :set_mk_user, only: [:show, :edit, :update, :destroy]

  # GET /mk_users
  # GET /mk_users.json
  def index
    @mk_users = MkUser.all
  end

  # GET /mk_users/1
  # GET /mk_users/1.json
  def show
  end

  # GET /mk_users/new
  def new
    @mk_user = MkUser.new
  end

  # GET /mk_users/1/edit
  def edit
  end

  # POST /mk_users
  # POST /mk_users.json
  def create
    @mk_user = MkUser.new(mk_user_params)

    respond_to do |format|
      if @mk_user.save
        format.html { redirect_to @mk_user, notice: 'Mk user was successfully created.' }
        format.json { render :show, status: :created, location: @mk_user }
      else
        format.html { render :new }
        format.json { render json: @mk_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mk_users/1
  # PATCH/PUT /mk_users/1.json
  def update
    respond_to do |format|
      if @mk_user.update(mk_user_params)
        if @mk_user.mobile == true
          format.html { redirect_to mobile_marketcons_venedor_path(user_id: @mk_user.user_id), notice: 'Mk user was successfully updated.' }
        else
          format.html { redirect_to marketcons_venedor_path(user_id: @mk_user.user_id), notice: 'Mk user was successfully updated.' }
        end
        format.json { render :show, status: :ok, location: @mk_user }
      else
        format.html { render :edit }
        format.json { render json: @mk_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mk_users/1
  # DELETE /mk_users/1.json
  def destroy
    @mk_user.destroy
    respond_to do |format|
      format.html { redirect_to mk_users_url, notice: 'Mk user was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mk_user
      @mk_user = MkUser.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mk_user_params
      params.require(:mk_user).permit(:user_id, :nom, :cognoms, :adreca, :codi_postal, :municipi, :email, :telefon, :web, :mostrar_adreca, :mostrar_email, :mostrar_telefon, :mostrar_web, :mk_image_user, :mobile)
    end
end
