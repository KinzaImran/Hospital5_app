json.array!(@patients) do |patient|
  json.extract! patient, :id, :p_number, :p_name, :p_age
  json.url patient_url(patient, format: :json)
end
