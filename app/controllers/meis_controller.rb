class MeisController < ApplicationController
  before_action :set_mei, only: [:show, :edit, :update, :destroy]

  # GET /meis
  # GET /meis.json
  def index
    #caso a página de meis seja acessada sem passar parâmetros, é necessário mostrar todos os existentes
    #pode ser alterado lá na frente, quando for necessário filtrar por categorias, por exemplo
    @meis = Mei.all
    
    if params[:search]
        if params[:category] == ""
          @meis = Mei.search(params[:search])
        elsif (params[:search] == "") && (params[:category] != "") 
          @meis = Mei.search_with_category(params[:category])
        else
          @meis = Mei.search_with_category_and_search(params[:search], params[:category])
        end 
    end
  end

  # GET /meis/1
  # GET /meis/1.json
  def show

    @mei = Mei.find(params[:id])
    @comments = Comment.where(mei_id: @mei.id)
    @contatos = @mei.phone_numbers
    @endereco_comercial = @mei.business_address
    #@comment = Comment.new(:mei_id => @mei.id) #deve ser alterado para esse --> @mei.comments.build
    #@comment = Comment.new#deve ser alterado para esse --> @mei.comments.build
    #@comments = Comment.all
    
  end

  # GET /meis/new
  def new
    @mei = Mei.new
    2.times { @mei.phone_numbers.build }
    @mei.business_address.build
    @mei.home_address.build
    
    @mei.acts.build
    @mei.works.build
    
  end

  # GET /meis/1/edit
  def edit
    #2.times { @mei.phone_numbers.build }
    #@mei.business_address.build
    #@mei.home_address.build
    
    #@mei.acts.build
    #@mei.works.build
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
      params.require(:mei).permit(
        :cnpj, :razao_social, :cpf, :rg, :nome, :sexo, :descricao_atividade, :email, 
        acts_attributes: [:mei_id, :occupation_id], #somente em colocar o acts_attributes já faz com que o id do mei passe para o modelo do acts.
          #só falta adicionar o occupation_id
        works_attributes: [:mei_id, :job_id],
        phone_numbers_attributes: [:number, :mei_id],
        home_address_attributes: [:rua, :bairro, :cidade, :mei_id],
        business_address_attributes: [:rua, :bairro, :cidade, :mei_id],
        comments_attributes: [:name, :title, :description, :mei_id]
        )
    end
end
