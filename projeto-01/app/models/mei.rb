class Mei < ActiveRecord::Base
    has_many :phone_numbers
    has_many :business_address
    has_many :home_address
    has_many :comments 
    
    has_many :acts 
    has_many :occupations, :through => :acts
    
    has_many :works 
    has_many :jobs, :through => :works
    
    def self.search(search_params)
        where("nome LIKE ?", "%#{search_params}%")
        where("descricao_atividade LIKE ?", "%#{search_params}%")
    end
end
