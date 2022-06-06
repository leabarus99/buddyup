class Customer < ApplicationRecord
  has_many :reservations, :friends
end
