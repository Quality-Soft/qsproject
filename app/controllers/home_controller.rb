class HomeController < ApplicationController
  def index
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
end
