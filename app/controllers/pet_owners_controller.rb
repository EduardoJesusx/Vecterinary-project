class PetOwnersController < ApplicationController
  before_action :authenticate_user, except: []
  before_action :admin_permission, except: [ :index ]
  before_action :set_pet_owner, only: %i[ show edit update destroy ]

  # GET /pet_owners or /pet_owners.json
  def index
    @pet_owners = PetOwner.all
  end

  # GET /pet_owners/1 or /pet_owners/1.json
  def show
  end

  # GET /pet_owners/new
  def new
    @pet_owner = PetOwner.new
  end

  # GET /pet_owners/1/edit
  def edit
  end

  # POST /pet_owners or /pet_owners.json
  def create
    @pet_owner = PetOwner.new(pet_owner_params)

    respond_to do |format|
      if @pet_owner.save
        format.html { redirect_to pet_owner_url(@pet_owner), notice: "Pet owner was successfully created." }
        format.json { render :show, status: :created, location: @pet_owner }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @pet_owner.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pet_owners/1 or /pet_owners/1.json
  def update
    respond_to do |format|
      if @pet_owner.update(pet_owner_params)
        format.html { redirect_to pet_owner_url(@pet_owner), notice: "Pet owner was successfully updated." }
        format.json { render :show, status: :ok, location: @pet_owner }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @pet_owner.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pet_owners/1 or /pet_owners/1.json
  def destroy
    @pet_owner.destroy

    respond_to do |format|
      format.html { redirect_to pet_owners_url, notice: "Pet owner was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pet_owner
      @pet_owner = PetOwner.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def pet_owner_params
      params.require(:pet_owner).permit(:first_name, :last_name, :email, :cell_number)
    end
end
