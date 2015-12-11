class User < ActiveRecord::Base
  
  ratyrate_rater #This also adds the required association to the User model. ~> http://www.sitepoint.com/ratyrate-add-rating-rails-app/

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
end
