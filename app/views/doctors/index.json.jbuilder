json.array!(@doctors) do |doctor|
  json.extract! doctor, :id, :d_number, :d_name, :d_qualification
  json.url doctor_url(doctor, format: :json)
end
