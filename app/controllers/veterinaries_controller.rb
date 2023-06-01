class VeterinariesController < ApplicationController
  before_action :authenticate_user, except: []
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
    if password_validation(veterinary_params[:password], veterinary_params[:password_confirmation])
      veterinary_params[:password_digest] = Digest::SHA256.hexdigest(veterinary_params[:password])
      veterinary_params[:password] = ''
      veterinary_params[:password_confirmation] = ''
    end
    @veterinary = Veterinary.new(veterinary_params.slice(:password, :password_confirmation))
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

    def password_validation(password, password_confirmation)
      true if password == password_confirmation && password != ''
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_veterinary
      @veterinary = Veterinary.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def veterinary_params
      params.require(:veterinary).permit(:first_name,:last_name, :admin, :email, :password, :password_confirmation)
    end
end
