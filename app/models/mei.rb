class Mei < ActiveRecord::Base
    has_many :phone_numbers, :dependent => :destroy
    has_many :business_address, :dependent => :destroy
    has_many :home_address, :dependent => :destroy
    has_many :comments, :dependent => :destroy
    
    
    has_many :acts 
    has_many :occupations, :through => :acts
    
    has_many :works 
    has_many :jobs, :through => :works
    
    #validates :cpf, uniquesses: true
    
    accepts_nested_attributes_for :phone_numbers, :allow_destroy => true
    accepts_nested_attributes_for :business_address, :allow_destroy => true
    accepts_nested_attributes_for :home_address, :allow_destroy => true
    accepts_nested_attributes_for :comments, :allow_destroy => true
    
    accepts_nested_attributes_for :acts 
    accepts_nested_attributes_for :works
    
    #será necessário para que a função seja completa...
    #accepts_nested_attributes_for :comments, :allow_destroy => true
    
    def self.search(search_params)
        where("nome LIKE ? OR descricao_atividade LIKE ?", "%#{search_params}%", "%#{search_params}%")
        #where("descricao_atividade LIKE ?", "%#{search_params}%")
    end
    
    def self.search_with_category(category_params)
        joins(:acts).where('acts.occupation_id' => category_params)
    end 
    
    def self.search_with_category_and_search(search_params, category_params)
        joins(:acts).where("nome LIKE ? OR descricao_atividade LIKE ? AND acts.occupation_id = ?", "%#{search_params}%", "%#{search_params}%", category_params)
    end 

end
