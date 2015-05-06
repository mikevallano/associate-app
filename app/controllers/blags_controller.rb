class BlagsController < ApplicationController
  before_action :set_blag, only: [:show, :edit, :update, :destroy]

  # GET /blags
  # GET /blags.json
  def index
    @blags = Blag.all
  end

  # GET /blags/1
  # GET /blags/1.json
  def show
  end

  # GET /blags/new
  def new
    @blag = Blag.new
  end

  # GET /blags/1/edit
  def edit
  end

  # POST /blags
  # POST /blags.json
  def create
    @blag = Blag.new(blag_params)

    respond_to do |format|
      if @blag.save
        format.html { redirect_to @blag, notice: 'Blag was successfully created.' }
        format.json { render :show, status: :created, location: @blag }
      else
        format.html { render :new }
        format.json { render json: @blag.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /blags/1
  # PATCH/PUT /blags/1.json
  def update
    respond_to do |format|
      if @blag.update(blag_params)
        format.html { redirect_to @blag, notice: 'Blag was successfully updated.' }
        format.json { render :show, status: :ok, location: @blag }
      else
        format.html { render :edit }
        format.json { render json: @blag.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /blags/1
  # DELETE /blags/1.json
  def destroy
    @blag.destroy
    respond_to do |format|
      format.html { redirect_to blags_url, notice: 'Blag was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_blag
      @blag = Blag.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def blag_params
      params.require(:blag).permit(:name)
    end
end
