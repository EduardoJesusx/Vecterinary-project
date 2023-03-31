class CreateExams < ActiveRecord::Migration[7.0]
  def change
    create_table :exams do |t|
      t.string :title
      t.text :description
      t.text :observation
      t.datetime :scheduled
      t.references :pet_owner, null: false, foreign_key: true
      t.references :veterinary, null: false, foreign_key: true

      t.timestamps
    end
  end
end
