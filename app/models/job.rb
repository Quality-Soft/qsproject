class Job < ActiveRecord::Base
    has_many :works
    has_many :meis, :through => :works
end
