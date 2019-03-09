class Location < ApplicationRecord
  belongs_to :trip
<<<<<<< HEAD

  has_one :address, dependent: :destroy
=======
  has_one :address
>>>>>>> ef094947edb01ff45b56efa6c501ba41aec46d44
end
