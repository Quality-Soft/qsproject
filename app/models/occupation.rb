class Occupation < ActiveRecord::Base
    has_many :acts
    has_many :meis, :through => :acts
end
