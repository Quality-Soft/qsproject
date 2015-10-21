class Mei < ActiveRecord::Base
    has_many :phone_number
    has_many :business_address
    has_many :home_address
end
