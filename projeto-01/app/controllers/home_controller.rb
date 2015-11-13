class HomeController < Devise::HomeController
  def index
    if params[:search]
      @meis = Mei.search(params[:search])
    end
  end
end


