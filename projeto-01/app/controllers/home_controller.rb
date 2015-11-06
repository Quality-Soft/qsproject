class HomeController < ApplicationController
  def index
    if params[:search]
      @meis = Mei.search(params[:search])
      redirect_to meis_path(@meis)
    end
  end
end
