class Mei < ActiveRecord::Base
    has_many :phone_numbers
    has_many :business_address
    has_many :home_address
end
