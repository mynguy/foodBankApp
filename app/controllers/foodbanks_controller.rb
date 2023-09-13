class FoodbanksController < ApplicationController
  before_action :set_foodbank, only: %i[ show edit update destroy ]

  # GET /foodbanks or /foodbanks.json
  def index
    @foodbanks = Foodbank.all
  end

  # GET /foodbanks/1 or /foodbanks/1.json
  def show
  end

  # GET /foodbanks/new
  def new
    @foodbank = Foodbank.new
  end

  # GET /foodbanks/1/edit
  def edit
  end

  # POST /foodbanks or /foodbanks.json
  def create
    @foodbank = Foodbank.new(foodbank_params)

    respond_to do |format|
      if @foodbank.save
        format.html { redirect_to foodbank_url(@foodbank), notice: "Foodbank was successfully created." }
        format.json { render :show, status: :created, location: @foodbank }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @foodbank.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /foodbanks/1 or /foodbanks/1.json
  def update
    respond_to do |format|
      if @foodbank.update(foodbank_params)
        format.html { redirect_to foodbank_url(@foodbank), notice: "Foodbank was successfully updated." }
        format.json { render :show, status: :ok, location: @foodbank }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @foodbank.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /foodbanks/1 or /foodbanks/1.json
  def destroy
    @foodbank.destroy

    respond_to do |format|
      format.html { redirect_to foodbanks_url, notice: "Foodbank was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_foodbank
      @foodbank = Foodbank.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def foodbank_params
      params.require(:foodbank).permit(:name, :address, :city, :state, :zipcode, :email, :phone)
    end
end
