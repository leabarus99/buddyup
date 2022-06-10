class Friend < ApplicationRecord
  belongs_to :user

  has_one_attached :photo

  geocoded_by :localisation
  after_validation :geocode, if: :will_save_change_to_localisation?

  include PgSearch::Model
  pg_search_scope :search_by_personnality_and_localisation,
    against: %i[personnality localisation],
      using: {
        tsearch: { prefix: true } }
end
