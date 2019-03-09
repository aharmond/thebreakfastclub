class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
<<<<<<< HEAD
  has_many :trips

=======
>>>>>>> 1191826b74f63dba9be6971874a9d44dece85421
end
