class MislibrosController < ApplicationController
  before_action :set_mislibro, only: [:show, :edit, :update, :destroy]

  # GET /mislibros
  # GET /mislibros.json
  def index
    @mislibros = Mislibro.all
  end

  # GET /mislibros/1
  # GET /mislibros/1.json
  def show
  end

  # GET /mislibros/new
  def new
    @mislibro = Mislibro.new
  end

  # GET /mislibros/1/edit
  def edit
  end

  # POST /mislibros
  # POST /mislibros.json
  def create
    @mislibro = Mislibro.new(mislibro_params)

    respond_to do |format|
      if @mislibro.save
        format.html { redirect_to @mislibro, notice: 'Mislibro was successfully created.' }
        format.json { render :show, status: :created, location: @mislibro }
      else
        format.html { render :new }
        format.json { render json: @mislibro.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mislibros/1
  # PATCH/PUT /mislibros/1.json
  def update
    respond_to do |format|
      if @mislibro.update(mislibro_params)
        format.html { redirect_to @mislibro, notice: 'Mislibro was successfully updated.' }
        format.json { render :show, status: :ok, location: @mislibro }
      else
        format.html { render :edit }
        format.json { render json: @mislibro.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mislibros/1
  # DELETE /mislibros/1.json
  def destroy
    @mislibro.destroy
    respond_to do |format|
      format.html { redirect_to mislibros_url, notice: 'Mislibro was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mislibro
      @mislibro = Mislibro.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mislibro_params
      params.require(:mislibro).permit(:nombre, :descripcion, :idautor, :idgenero)
    end
end
