class ConcedentesController < ApplicationController
  before_action :set_concedente, only: [:show, :edit, :update, :destroy]

  # GET /concedentes
  # GET /concedentes.json
  def index
    @concedentes = Concedente.all
  end

  # GET /concedentes/1
  # GET /concedentes/1.json
  def show
  end

  # GET /concedentes/new
  def new
    @concedente = Concedente.new
  end

  # GET /concedentes/1/edit
  def edit
  end

  # POST /concedentes
  # POST /concedentes.json
  def create
    @concedente = Concedente.new(concedente_params)

    respond_to do |format|
      if @concedente.save
        format.html { redirect_to @concedente, notice: 'Concedente was successfully created.' }
        format.json { render action: 'show', status: :created, location: @concedente }
      else
        format.html { render action: 'new' }
        format.json { render json: @concedente.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /concedentes/1
  # PATCH/PUT /concedentes/1.json
  def update
    respond_to do |format|
      if @concedente.update(concedente_params)
        format.html { redirect_to @concedente, notice: 'Concedente was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @concedente.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /concedentes/1
  # DELETE /concedentes/1.json
  def destroy
    @concedente.destroy
    respond_to do |format|
      format.html { redirect_to concedentes_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_concedente
      @concedente = Concedente.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def concedente_params
      params.require(:concedente).permit(:nome, :codigo, :references)
    end
end
