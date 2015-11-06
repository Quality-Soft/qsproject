class HomeController < ApplicationController
  def index
    if params[:search]
      redirect_to meis_path
    else
      
    end
    #@mei.alguma_coisa = Mei.all 
  end
end
