json.array!(@passengers) do |passenger|
  json.extract! passenger, :id, :flight, :seat, :name, :from, :work, :hobby, :type, :comments, :avatar, :fb, :linkedin, :source
  json.url passenger_url(passenger, format: :json)
end
