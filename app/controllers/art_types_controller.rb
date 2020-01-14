class ArtTypesController < ApplicationController
  before_action :set_art_type, only: [:show, :edit, :update, :destroy]

  # GET /art_types
  # GET /art_types.json
  def index
    @art_types = ArtType.all
  end

  # GET /art_types/1
  # GET /art_types/1.json
  def show
  end

  # GET /art_types/new
  def new
    @art_type = ArtType.new
  end

  # GET /art_types/1/edit
  def edit
  end

  # POST /art_types
  # POST /art_types.json
  def create
    @art_type = ArtType.new(art_type_params)

    respond_to do |format|
      if @art_type.save
        format.html { redirect_to @art_type, notice: 'Art type was successfully created.' }
        format.json { render :show, status: :created, location: @art_type }
      else
        format.html { render :new }
        format.json { render json: @art_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /art_types/1
  # PATCH/PUT /art_types/1.json
  def update
    respond_to do |format|
      if @art_type.update(art_type_params)
        format.html { redirect_to @art_type, notice: 'Art type was successfully updated.' }
        format.json { render :show, status: :ok, location: @art_type }
      else
        format.html { render :edit }
        format.json { render json: @art_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /art_types/1
  # DELETE /art_types/1.json
  def destroy
    @art_type.destroy
    respond_to do |format|
      format.html { redirect_to art_types_url, notice: 'Art type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_art_type
      @art_type = ArtType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def art_type_params
      params.require(:art_type).permit(:title, :date, :author, :interpreter, :dimention, :link, :emotion_id)
    end
end
