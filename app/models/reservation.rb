class Reservation < ApplicationRecord
  belongs_to :friend
  belongs_to :customer
end
