class CreateReservations < ActiveRecord::Migration[6.1]
  def change
    create_table :reservations do |t|
      t.string :date
      t.string :location
      t.references :friend_id, null: false, foreign_key: true
      t.references :customer_id, null: false, foreign_key: true

      t.timestamps
    end
  end
end
