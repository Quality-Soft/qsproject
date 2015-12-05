class HomeController < ApplicationController
  def index
     if params[:search]
      if params[:search] == ""
          if params[:category] == ""
              if params[:job] == ""
                  @meis = Mei.all.paginate(:page => params[:page], :per_page => 4)
              else
                  @meis = Mei.search_with_job(params[:job]).paginate(:page => params[:page], :per_page => 4)
              end
          else
              if params[:job] == ""
                  @meis = Mei.search_with_category(params[:category]).paginate(:page => params[:page], :per_page => 4)
              else
                  @meis = Mei.search_with_category_and_job(params[:category], params[:job]).paginate(:page => params[:page], :per_page => 4)
              end
          end
      else
          if params[:category] == ""
              if params[:job] == ""
                  @meis = Mei.search(params[:search]).paginate(:page => params[:page], :per_page => 4)
              else
                  @meis = Mei.search_with_job_and_search(params[:job], params[:search]).paginate(:page => params[:page], :per_page => 4)
              end
          else
              if params[:job] == ""
                  @meis = Mei.search_with_category_and_search(params[:category], params[:search]).paginate(:page => params[:page], :per_page => 4)
              else
                  @meis = Mei.search_with_search_and_category_and_job(params[:search], params[:category], params[:job]).paginate(:page => params[:page], :per_page => 4)
              end
          end
      end              
    end
  end
end
