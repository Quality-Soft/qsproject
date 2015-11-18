class BusinessAddressesController < ApplicationController
  before_action :set_business_address, only: [:show, :edit, :update, :destroy]

  # GET /business_addresses
  # GET /business_addresses.json
  def index
    @business_addresses = BusinessAddress.all
  end

  # GET /business_addresses/1
  # GET /business_addresses/1.json
  def show
  end

  # GET /business_addresses/new
  def new
    @business_address = BusinessAddress.new
  end

  # GET /business_addresses/1/edit
  def edit
  end

  # POST /business_addresses
  # POST /business_addresses.json
  def create
    @business_address = BusinessAddress.new(business_address_params)

    respond_to do |format|
      if @business_address.save
        format.html { redirect_to @business_address, notice: 'Business address was successfully created.' }
        format.json { render :show, status: :created, location: @business_address }
      else
        format.html { render :new }
        format.json { render json: @business_address.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /business_addresses/1
  # PATCH/PUT /business_addresses/1.json
  def update
    respond_to do |format|
      if @business_address.update(business_address_params)
        format.html { redirect_to @business_address, notice: 'Business address was successfully updated.' }
        format.json { render :show, status: :ok, location: @business_address }
      else
        format.html { render :edit }
        format.json { render json: @business_address.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /business_addresses/1
  # DELETE /business_addresses/1.json
  def destroy
    @business_address.destroy
    respond_to do |format|
      format.html { redirect_to business_addresses_url, notice: 'Business address was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_business_address
      @business_address = BusinessAddress.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def business_address_params
      params[:business_address]
    end
end
