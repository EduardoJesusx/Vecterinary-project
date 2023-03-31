class CreatePetOwners < ActiveRecord::Migration[7.0]
  def change
    create_table :pet_owners do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :cell_number

      t.timestamps
    end
  end
end
