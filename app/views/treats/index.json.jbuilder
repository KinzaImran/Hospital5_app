json.array!(@treats) do |treat|
  json.extract! treat, :id, :t_date, :patient_id, :doctor_id
  json.url treat_url(treat, format: :json)
end
