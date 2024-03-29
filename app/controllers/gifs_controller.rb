class GifsController < ApplicationController
  before_action :set_gif, only: [:show, :edit, :update, :destroy]

  # GET /gifs
  # GET /gifs.json
  def index
    @gifs = Gif.all
  end

  # GET /gifs/1
  # GET /gifs/1.json
  def show
  end

  # GET /gifs/new
  def new
    @gif = Gif.new
  end

  # GET /gifs/1/edit
  def edit
  end

  # POST /gifs
  # POST /gifs.json
  def create
    @gif = Gif.new(gif_params)

    respond_to do |format|
      if @gif.save
        format.html { redirect_to @gif, notice: 'Gif was successfully created.' }
        format.json { render action: 'show', status: :created, location: @gif }
      else
        format.html { render action: 'new' }
        format.json { render json: @gif.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gifs/1
  # PATCH/PUT /gifs/1.json
  def update
    respond_to do |format|
      if @gif.update(gif_params)
        format.html { redirect_to @gif, notice: 'Gif was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @gif.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gifs/1
  # DELETE /gifs/1.json
  def destroy
    @gif.destroy
    respond_to do |format|
      format.html { redirect_to gifs_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gif
      @gif = Gif.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gif_params
      params.require(:gif).permit(:title, :image_url, :description)
    end
end
