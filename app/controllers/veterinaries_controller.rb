class VeterinariesController < ApplicationController
  before_action :set_veterinary, only: %i[ show edit update destroy ]

  # GET /veterinaries or /veterinaries.json
  def index
    @veterinaries = Veterinary.all
  end

  # GET /veterinaries/1 or /veterinaries/1.json
  def show
  end

  # GET /veterinaries/new
  def new
    @veterinary = Veterinary.new
  end

  # GET /veterinaries/1/edit
  def edit
  end

  # POST /veterinaries or /veterinaries.json
  def create
    @veterinary = Veterinary.new(veterinary_params)

    respond_to do |format|
      if @veterinary.save
        format.html { redirect_to veterinary_url(@veterinary), notice: "Veterinary was successfully created." }
        format.json { render :show, status: :created, location: @veterinary }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @veterinary.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /veterinaries/1 or /veterinaries/1.json
  def update
    respond_to do |format|
      if @veterinary.update(veterinary_params)
        format.html { redirect_to veterinary_url(@veterinary), notice: "Veterinary was successfully updated." }
        format.json { render :show, status: :ok, location: @veterinary }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @veterinary.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /veterinaries/1 or /veterinaries/1.json
  def destroy
    @veterinary.destroy

    respond_to do |format|
      format.html { redirect_to veterinaries_url, notice: "Veterinary was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_veterinary
      @veterinary = Veterinary.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def veterinary_params
      params.require(:veterinary).permit(:first_name, :last_name, :admin)
    end
end
