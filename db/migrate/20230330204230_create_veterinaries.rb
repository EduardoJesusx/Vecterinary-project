class CreateVeterinaries < ActiveRecord::Migration[7.0]
  def change
    create_table :veterinaries do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone
      t.string :password_digest
      t.boolean :admin

      t.timestamps
    end
  end
end
