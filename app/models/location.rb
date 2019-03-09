class Location < ApplicationRecord
  belongs_to :trip
<<<<<<< HEAD
  has_one :address
=======

  has_one :address, dependent: :destroy
>>>>>>> a1d496228515e7f16b1bacb4d24218cd9e913c71
end
