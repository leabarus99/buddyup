class Friend < ApplicationRecord
  belongs_to :user

  geocoded_by :localisation
  after_validation :geocode, if: :will_save_change_to_localisation?
end
