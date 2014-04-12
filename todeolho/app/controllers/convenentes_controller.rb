class ConvenentesController < ApplicationController
  before_action :set_convenente, only: [:show, :edit, :update, :destroy]

  # GET /convenentes
  # GET /convenentes.json
  def index
    @convenentes = Convenente.all
  end

  # GET /convenentes/1
  # GET /convenentes/1.json
  def show
  end

  # GET /convenentes/new
  def new
    @convenente = Convenente.new
  end

  # GET /convenentes/1/edit
  def edit
  end

  # POST /convenentes
  # POST /convenentes.json
  def create
    @convenente = Convenente.new(convenente_params)

    respond_to do |format|
      if @convenente.save
        format.html { redirect_to @convenente, notice: 'Convenente was successfully created.' }
        format.json { render action: 'show', status: :created, location: @convenente }
      else
        format.html { render action: 'new' }
        format.json { render json: @convenente.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /convenentes/1
  # PATCH/PUT /convenentes/1.json
  def update
    respond_to do |format|
      if @convenente.update(convenente_params)
        format.html { redirect_to @convenente, notice: 'Convenente was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @convenente.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /convenentes/1
  # DELETE /convenentes/1.json
  def destroy
    @convenente.destroy
    respond_to do |format|
      format.html { redirect_to convenentes_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_convenente
      @convenente = Convenente.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def convenente_params
      params.require(:convenente).permit(:nome, :codigo, :references)
    end
end
