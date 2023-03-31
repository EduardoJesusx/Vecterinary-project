json.extract! animal, :id, :name, :observation, :pet_owner_id, :created_at, :updated_at
json.url animal_url(animal, format: :json)
