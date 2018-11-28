class Cart < ApplicationRecord
<<<<<<< HEAD
  belongs_to :user_id
=======
  belongs_to :user
>>>>>>> 1c4c05e0ff39297b08011c0aa6de7894070c7264
  has_and_belongs_to_many :items
end
