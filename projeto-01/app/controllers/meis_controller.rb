class MeisController < ApplicationController
  before_action :set_mei, only: [:show, :edit, :update, :destroy]

  # GET /meis
  # GET /meis.json
  def index
    if params[:search] && params[:search] != ""
      @meis = Mei.search(params[:search])
    else
      @meis = nil
    end
  end

  # GET /meis/1
  # GET /meis/1.json
  def show
    @comments = Comment.all
    @comment = Comment.new
  end

  # GET /meis/new
  def new
    @mei = Mei.new
  end

  # GET /meis/1/edit
  def edit
  end

  # POST /meis
  # POST /meis.json
  def create
    @mei = Mei.new(mei_params)

    respond_to do |format|
      if @mei.save
        format.html { redirect_to @mei, notice: 'Mei was successfully created.' }
        format.json { render :show, status: :created, location: @mei }
      else
        format.html { render :new }
        format.json { render json: @mei.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /meis/1
  # PATCH/PUT /meis/1.json
  def update
    respond_to do |format|
      if @mei.update(mei_params)
        format.html { redirect_to @mei, notice: 'Mei was successfully updated.' }
        format.json { render :show, status: :ok, location: @mei }
      else
        format.html { render :edit }
        format.json { render json: @mei.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /meis/1
  # DELETE /meis/1.json
  def destroy
    @mei.destroy
    respond_to do |format|
      format.html { redirect_to meis_url, notice: 'Mei was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def search_tmdb
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mei
      @mei = Mei.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mei_params
      params.require(:mei).permit(:cnpj, :razao_social, :cpf, :rg, :nome, :sexo, :descricao_atividade, :email)
    end
end
