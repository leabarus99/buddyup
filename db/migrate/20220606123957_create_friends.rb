class CreateFriends < ActiveRecord::Migration[6.1]
  def change
    create_table :friends do |t|
      t.string :first_name
      t.string :last_name
      t.string :age
      t.string :personnality
      t.string :hobby
      t.string :availability
      t.string :localisation
      t.string :event_category
      t.references :custumer_id, null: false, foreign_key: true

      t.timestamps
    end
  end
end
