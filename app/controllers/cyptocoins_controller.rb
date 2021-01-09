class CyptocoinsController < ApplicationController
  before_action :set_cyptocoin, only: [:show, :edit, :update, :destroy]

  # GET /cyptocoins
  # GET /cyptocoins.json
  def index
    @cyptocoins = Cyptocoin.all
  end

  # GET /cyptocoins/1
  # GET /cyptocoins/1.json
  def show
  end

  # GET /cyptocoins/new
  def new
    @cyptocoin = Cyptocoin.new
  end

  # GET /cyptocoins/1/edit
  def edit
  end

  # POST /cyptocoins
  # POST /cyptocoins.json
  def create
    @cyptocoin = Cyptocoin.new(cyptocoin_params)

    respond_to do |format|
      if @cyptocoin.save
        format.html { redirect_to @cyptocoin, notice: 'Cyptocoin was successfully created.' }
        format.json { render :show, status: :created, location: @cyptocoin }
      else
        format.html { render :new }
        format.json { render json: @cyptocoin.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cyptocoins/1
  # PATCH/PUT /cyptocoins/1.json
  def update
    respond_to do |format|
      if @cyptocoin.update(cyptocoin_params)
        format.html { redirect_to @cyptocoin, notice: 'Cyptocoin was successfully updated.' }
        format.json { render :show, status: :ok, location: @cyptocoin }
      else
        format.html { render :edit }
        format.json { render json: @cyptocoin.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cyptocoins/1
  # DELETE /cyptocoins/1.json
  def destroy
    @cyptocoin.destroy
    respond_to do |format|
      format.html { redirect_to cyptocoins_url, notice: 'Cyptocoin was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cyptocoin
      @cyptocoin = Cyptocoin.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cyptocoin_params
      params.require(:cyptocoin).permit(:description, :acronym, :image_url)
    end
end
