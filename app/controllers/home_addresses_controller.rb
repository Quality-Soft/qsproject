class HomeAddressesController < ApplicationController
  before_action :set_home_address, only: [:show, :edit, :update, :destroy]

  # GET /home_addresses
  # GET /home_addresses.json
  def index
    @home_addresses = HomeAddress.all
  end

  # GET /home_addresses/1
  # GET /home_addresses/1.json
  def show
  end

  # GET /home_addresses/new
  def new
    @home_address = HomeAddress.new
  end

  # GET /home_addresses/1/edit
  def edit
  end

  # POST /home_addresses
  # POST /home_addresses.json
  def create
    @home_address = HomeAddress.new(home_address_params)

    respond_to do |format|
      if @home_address.save
        format.html { redirect_to @home_address, notice: 'Home address was successfully created.' }
        format.json { render :show, status: :created, location: @home_address }
      else
        format.html { render :new }
        format.json { render json: @home_address.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /home_addresses/1
  # PATCH/PUT /home_addresses/1.json
  def update
    respond_to do |format|
      if @home_address.update(home_address_params)
        format.html { redirect_to @home_address, notice: 'Home address was successfully updated.' }
        format.json { render :show, status: :ok, location: @home_address }
      else
        format.html { render :edit }
        format.json { render json: @home_address.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /home_addresses/1
  # DELETE /home_addresses/1.json
  def destroy
    @home_address.destroy
    respond_to do |format|
      format.html { redirect_to home_addresses_url, notice: 'Home address was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_home_address
      @home_address = HomeAddress.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def home_address_params
      params[:home_address]
    end
end
