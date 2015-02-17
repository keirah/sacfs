json.array!(@consultants) do |consultant|
  json.extract! consultant, :id, :discipline, :title, :firstname, :surname, :address, :suburb, :state, :postcode, :phone, :fax, :url, :lat, :lng, :description
  json.url consultant_url(consultant, format: :json)
end
