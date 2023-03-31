class CreateAnimals < ActiveRecord::Migration[7.0]
  def change
    create_table :animals do |t|
      t.string :name
      t.text :observation
      t.references :pet_owner, null: false, foreign_key: true

      t.timestamps
    end
  end
end
