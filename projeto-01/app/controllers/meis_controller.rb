class MeisController < ApplicationController
  before_action :set_mei, only: [:show, :edit, :update, :destroy]

  # GET /meis
  # GET /meis.json
  def index
    #caso a página de meis seja acessada sem passar parâmetros, é necessário mostrar todos os existentes
    #pode ser alterado lá na frente, quando for necessário filtrar por categorias, por exemplo
    @meis = Mei.all
    if params[:search]
      @meis = Mei.search(params[:search])
    end
  end

  # GET /meis/1
  # GET /meis/1.json
  def show
    @comments = Comment.all
    
    
    @comment = Comment.new #deve ser alterado para esse --> @mei.comments.build
  end

  # GET /meis/new
  def new
    @mei = Mei.new
    @mei.phone_numbers.build
    @mei.business_address.build
    @mei.home_address.build
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
        format.html { redirect_to @mei }#, notice: 'Mei was successfully created.' }
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
        format.html { redirect_to @mei}#, notice: 'Mei was successfully created.' }
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
