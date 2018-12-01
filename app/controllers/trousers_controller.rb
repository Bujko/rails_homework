class TrousersController < ApplicationController
  before_action :set_trouser, only: [:show, :edit, :update, :destroy]

  # GET /trousers
  # GET /trousers.json
  def index
    @trousers = Trouser.all
  end

  # GET /trousers/1
  # GET /trousers/1.json
  def show
  end

  # GET /trousers/new
  def new
    @trouser = Trouser.new
  end

  # GET /trousers/1/edit
  def edit
  end

  # POST /trousers
  # POST /trousers.json
  def create
    @trouser = Trouser.new(trouser_params)

    respond_to do |format|
      if @trouser.save
        format.html { redirect_to @trouser, notice: 'Trouser was successfully created.' }
        format.json { render :show, status: :created, location: @trouser }
      else
        format.html { render :new }
        format.json { render json: @trouser.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /trousers/1
  # PATCH/PUT /trousers/1.json
  def update
    respond_to do |format|
      if @trouser.update(trouser_params)
        format.html { redirect_to @trouser, notice: 'Trouser was successfully updated.' }
        format.json { render :show, status: :ok, location: @trouser }
      else
        format.html { render :edit }
        format.json { render json: @trouser.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /trousers/1
  # DELETE /trousers/1.json
  def destroy
    @trouser.destroy
    respond_to do |format|
      format.html { redirect_to trousers_url, notice: 'Trouser was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_trouser
      @trouser = Trouser.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def trouser_params
      params.require(:trouser).permit(:user_id, :picture)
    end
end
