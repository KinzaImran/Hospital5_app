json.array!(@medicines) do |medicine|
  json.extract! medicine, :id, :m_no, :manufacturing_date, :expiry_date
  json.url medicine_url(medicine, format: :json)
end
