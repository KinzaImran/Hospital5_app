json.array!(@nurses) do |nurse|
  json.extract! nurse, :id, :n_no, :name, :duty_hours
  json.url nurse_url(nurse, format: :json)
end
