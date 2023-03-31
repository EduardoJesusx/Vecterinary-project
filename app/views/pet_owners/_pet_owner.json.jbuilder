json.extract! pet_owner, :id, :first_name, :last_name, :email, :cell_number, :created_at, :updated_at
json.url pet_owner_url(pet_owner, format: :json)
