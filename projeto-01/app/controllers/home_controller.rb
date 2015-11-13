class HomeController < ApplicationController
  def index
    if params[:search]
      @meis = Mei.search(params[:search])
    end
  end
end


