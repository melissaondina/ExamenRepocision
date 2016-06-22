class MiautorsController < ApplicationController
  before_action :set_miautor, only: [:show, :edit, :update, :destroy]

  # GET /miautors
  # GET /miautors.json
  def index
    @miautors = Miautor.all
  end

  # GET /miautors/1
  # GET /miautors/1.json
  def show
  end

  # GET /miautors/new
  def new
    @miautor = Miautor.new
  end

  # GET /miautors/1/edit
  def edit
  end

  # POST /miautors
  # POST /miautors.json
  def create
    @miautor = Miautor.new(miautor_params)

    respond_to do |format|
      if @miautor.save
        format.html { redirect_to @miautor, notice: 'Miautor was successfully created.' }
        format.json { render :show, status: :created, location: @miautor }
      else
        format.html { render :new }
        format.json { render json: @miautor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /miautors/1
  # PATCH/PUT /miautors/1.json
  def update
    respond_to do |format|
      if @miautor.update(miautor_params)
        format.html { redirect_to @miautor, notice: 'Miautor was successfully updated.' }
        format.json { render :show, status: :ok, location: @miautor }
      else
        format.html { render :edit }
        format.json { render json: @miautor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /miautors/1
  # DELETE /miautors/1.json
  def destroy
    @miautor.destroy
    respond_to do |format|
      format.html { redirect_to miautors_url, notice: 'Miautor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_miautor
      @miautor = Miautor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def miautor_params
      params.require(:miautor).permit(:nombre, :idautor)
    end
end
