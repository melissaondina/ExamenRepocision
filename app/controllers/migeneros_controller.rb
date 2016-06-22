class MigenerosController < ApplicationController
  before_action :set_migenero, only: [:show, :edit, :update, :destroy]

  # GET /migeneros
  # GET /migeneros.json
  def index
    @migeneros = Migenero.all
  end

  # GET /migeneros/1
  # GET /migeneros/1.json
  def show
  end

  # GET /migeneros/new
  def new
    @migenero = Migenero.new
  end

  # GET /migeneros/1/edit
  def edit
  end

  # POST /migeneros
  # POST /migeneros.json
  def create
    @migenero = Migenero.new(migenero_params)

    respond_to do |format|
      if @migenero.save
        format.html { redirect_to @migenero, notice: 'Migenero was successfully created.' }
        format.json { render :show, status: :created, location: @migenero }
      else
        format.html { render :new }
        format.json { render json: @migenero.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /migeneros/1
  # PATCH/PUT /migeneros/1.json
  def update
    respond_to do |format|
      if @migenero.update(migenero_params)
        format.html { redirect_to @migenero, notice: 'Migenero was successfully updated.' }
        format.json { render :show, status: :ok, location: @migenero }
      else
        format.html { render :edit }
        format.json { render json: @migenero.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /migeneros/1
  # DELETE /migeneros/1.json
  def destroy
    @migenero.destroy
    respond_to do |format|
      format.html { redirect_to migeneros_url, notice: 'Migenero was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_migenero
      @migenero = Migenero.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def migenero_params
      params.require(:migenero).permit(:genero, :idgenero)
    end
end
