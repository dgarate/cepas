class WineOenologistsController < ApplicationController
  before_action :set_wine_oenologist, only: [:show, :edit, :update, :destroy]

  # GET /wine_oenologists
  # GET /wine_oenologists.json
  def index
    @wine_oenologists = WineOenologist.all
  end

  # GET /wine_oenologists/1
  # GET /wine_oenologists/1.json
  def show
  end

  # GET /wine_oenologists/new
  def new
    @wine_oenologist = WineOenologist.new
  end

  # GET /wine_oenologists/1/edit
  def edit
  end

  # POST /wine_oenologists
  # POST /wine_oenologists.json
  def create
    @wine_oenologist = WineOenologist.new(wine_oenologist_params)

    respond_to do |format|
      if @wine_oenologist.save
        format.html { redirect_to @wine_oenologist, notice: 'Wine oenologist was successfully created.' }
        format.json { render :show, status: :created, location: @wine_oenologist }
      else
        format.html { render :new }
        format.json { render json: @wine_oenologist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /wine_oenologists/1
  # PATCH/PUT /wine_oenologists/1.json
  def update
    respond_to do |format|
      if @wine_oenologist.update(wine_oenologist_params)
        format.html { redirect_to @wine_oenologist, notice: 'Wine oenologist was successfully updated.' }
        format.json { render :show, status: :ok, location: @wine_oenologist }
      else
        format.html { render :edit }
        format.json { render json: @wine_oenologist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /wine_oenologists/1
  # DELETE /wine_oenologists/1.json
  def destroy
    @wine_oenologist.destroy
    respond_to do |format|
      format.html { redirect_to wine_oenologists_url, notice: 'Wine oenologist was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_wine_oenologist
      @wine_oenologist = WineOenologist.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def wine_oenologist_params
      params.require(:wine_oenologist).permit(:grades, :wine_id, :oenologist_id)
    end
end
