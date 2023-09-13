json.extract! foodbank, :id, :name, :address, :city, :state, :zipcode, :email, :phone, :created_at, :updated_at
json.url foodbank_url(foodbank, format: :json)
