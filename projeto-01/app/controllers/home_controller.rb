class HomeController < ApplicationController
  def index
    if params[:search]
      redirect_to meis_path
    end
  end
end
