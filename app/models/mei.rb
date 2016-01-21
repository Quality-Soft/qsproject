class Mei < ActiveRecord::Base
    
    ratyrate_rateable "cnpj"
    
    validates_uniqueness_of :cnpj, message: " já cadastrado"
    validates_uniqueness_of :razao_social, message: " já cadastrada"
    validates_uniqueness_of :cpf, message: " já cadastrado"
    validates_uniqueness_of :rg, message: " já cadastrado"
    validates_uniqueness_of :nome, message: " já cadastrado"
    
    validates_presence_of :cnpj, message: " não pode ficar vazio"
    validates_presence_of :razao_social, message: " não pode ficar vazio"
    validates_presence_of :cpf, message: " não pode ficar vazio"
    validates_presence_of :rg, message: " não pode ficar vazio"
    validates_presence_of :nome, message: " não pode ficar vazio"

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
    end
    
    def self.search_with_category(category_params)
        joins(:acts).where('acts.occupation_id' => category_params)
    end 
    
    def self.search_with_job(job_params)
        joins(:works).where('works.job_id' => job_params)
    end
    
    #buscas compostas
    def self.search_with_category_and_search(category_params, search_params)
        joins(:acts).where("nome LIKE ? OR descricao_atividade LIKE ? AND acts.occupation_id = ?", "%#{search_params}%", "%#{search_params}%", category_params)
    end 
    
    def self.search_with_category_and_job(category_params, job_params)
        joins(:acts, :works).where("acts.occupation_id = ? AND works.job_id = ?", category_params, job_params)
    end
    
    def self.search_with_job_and_search(job_params, search_params)
        joins(:works).where("nome LIKE ? OR descricao_atividade LIKE ? AND works.job_id = ?", "%#{search_params}%", "%#{search_params}%", job_params)
    end
    
    def self.search_with_search_and_category_and_job(search_params, category_params, job_params)
        joins(:acts, :works).where("nome LIKE ? OR descricao_atividade LIKE ? AND acts.occupation_id = ? AND works.job_id = ?", "%#{search_params}%", "%#{search_params}%", category_params, job_params)
    end

end
