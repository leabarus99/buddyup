class Friend < ApplicationRecord
  belongs_to :custumer_id

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
