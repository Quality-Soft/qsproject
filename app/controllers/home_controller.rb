class HomeController < ApplicationController
  def index
     if params[:search]
        if params[:category] == ""
          @meis = Mei.search(params[:search]).paginate(:page => params[:page], :per_page => 4)
        elsif (params[:search] == "") && (params[:category] != "") 
          @meis = Mei.search_with_category(params[:category]).paginate(:page => params[:page], :per_page => 4)
        else
          @meis = Mei.search_with_category_and_search(params[:search], params[:category]).paginate(:page => params[:page], :per_page => 4)
        end 
     end
  end
end
