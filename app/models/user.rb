class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
<<<<<<< Updated upstream
  
<<<<<<< HEAD
=======

  has_many :trips, dependent: :destroy
>>>>>>> Stashed changes
=======
<<<<<<< HEAD
  has_many :trips

=======
>>>>>>> 1191826b74f63dba9be6971874a9d44dece85421
>>>>>>> efc9712f267bb848a59a0c97fa2cc65fc9dbb02b
end
