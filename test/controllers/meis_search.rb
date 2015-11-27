if params[:search] == ""
    if params[:category] == ""
        if params[:job] == ""
            @meis = Mei.all
        else
            @meis = Mei.search_with_job(params[:job]) #precisamos inserir a função de busca no modelo do mei
        end
    else
        if params[:job] == ""
            @meis = Mei.search_with_category(params[:category])
        else
            @meis = Mei.search_with_category_and_job(params[:category], params[:job]) #precisamos inserir a função de busca no modelo do mei
        end
    end
else
    if params[:category] == ""
        if params[:job] == ""
            @meis = Mei.search(params[:search])
        else
            @meis = Mei.search_with_search_and_job(params[:search], params[:job]) #precisamos inserir a função de busca no modelo do mei
        end
    else
        if params[:job] == ""
            @meis = Mei.search_with_search_and_category(params[:search], params[:category])#precisamos inserir a função de busca no modelo do mei
        else
            @meis = Mei.search_with_search_and_category_and_job(params[:search], params[:category], params[:job]) #precisamos inserir a função de busca no modelo do mei
        end
    end
end