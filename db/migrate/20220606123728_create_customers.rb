class CreateCustomers < ActiveRecord::Migration[6.1]
  def change
    create_table :customers do |t|
      t.string :first_name
      t.string :last_name
      t.integer :age
      t.string :location
      t.string :event_category
      t.string :hobby
      t.string :personality
      t.string :event_date

      t.timestamps
    end
  end
end
