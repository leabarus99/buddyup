class Reservation < ApplicationRecord
  belongs_to :friend_id
  belongs_to :customer_id

end
