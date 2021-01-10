class CryptocoinsController < ApplicationController
  before_action :set_cryptocoin, only: [:show, :edit, :update, :destroy]
  before_action :set_mining_type_options, only: [:new, :edit]

  layout "admin"

  # GET /cryptocoins
  # GET /cryptocoins.json
  def index
    @cryptocoins = Cryptocoin.all
  end

  # GET /cryptocoins/1
  # GET /cryptocoins/1.json
  def show
  end

  # GET /cryptocoins/new
  def new
    @cryptocoin = Cryptocoin.new
  end

  # GET /cryptocoins/1/edit
  def edit
  end

  # POST /cryptocoins
  # POST /cryptocoins.json
  def create
    @cryptocoin = Cryptocoin.new(cryptocoin_params)

    respond_to do |format|
      if @cryptocoin.save
        format.html { redirect_to @cryptocoin, notice: 'Cryptocoin was successfully created.' }
        format.json { render :show, status: :created, location: @cryptocoin }
      else
        format.html { render :new }
        format.json { render json: @cryptocoin.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cryptocoins/1
  # PATCH/PUT /cryptocoins/1.json
  def update
    respond_to do |format|
      if @cryptocoin.update(cryptocoin_params)
        format.html { redirect_to @cryptocoin, notice: 'Cryptocoin was successfully updated.' }
        format.json { render :show, status: :ok, location: @cryptocoin }
      else
        format.html { render :edit }
        format.json { render json: @cryptocoin.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cryptocoins/1
  # DELETE /cryptocoins/1.json
  def destroy
    @cryptocoin.destroy
    respond_to do |format|
      format.html { redirect_to cryptocoins_url, notice: 'Cryptocoin was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cryptocoin
      @cryptocoin = Cryptocoin.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cryptocoin_params
      params.require(:cryptocoin).permit(:description, :acronym, :image_url, :mining_type_id)
    end

    def set_mining_type_options
      @mining_type_options = MiningType.all.pluck(:description, :id)
    end
end
