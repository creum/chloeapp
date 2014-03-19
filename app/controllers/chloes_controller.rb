class ChloesController < ApplicationController
  before_action :set_chlo, only: [:show, :edit, :update, :destroy]

  # GET /chloes
  # GET /chloes.json
  def index
    @chloes = Chloe.all
  end

  # GET /chloes/1
  # GET /chloes/1.json
  def show
  end

  # GET /chloes/new
  def new
    @chlo = Chloe.new
  end

  # GET /chloes/1/edit
  def edit
  end

  # POST /chloes
  # POST /chloes.json
  def create
    @chlo = Chloe.new(chlo_params)

    respond_to do |format|
      if @chlo.save
        format.html { redirect_to @chlo, notice: 'Chloe was successfully created.' }
        format.json { render action: 'show', status: :created, location: @chlo }
      else
        format.html { render action: 'new' }
        format.json { render json: @chlo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /chloes/1
  # PATCH/PUT /chloes/1.json
  def update
    respond_to do |format|
      if @chlo.update(chlo_params)
        format.html { redirect_to @chlo, notice: 'Chloe was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @chlo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /chloes/1
  # DELETE /chloes/1.json
  def destroy
    @chlo.destroy
    respond_to do |format|
      format.html { redirect_to chloes_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_chlo
      @chlo = Chloe.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def chlo_params
      params.require(:chlo).permit(:name)
    end
end
