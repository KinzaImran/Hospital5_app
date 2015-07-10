json.array!(@bills) do |bill|
  json.extract! bill, :id, :b_date, :price, :references
  json.url bill_url(bill, format: :json)
end
