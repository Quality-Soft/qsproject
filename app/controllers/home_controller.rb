class HomeController < ApplicationController
  def index
    if params[:search]
      @teste = params[:category]
      @meis = Mei.search(params[:search])
    end
  end
end
