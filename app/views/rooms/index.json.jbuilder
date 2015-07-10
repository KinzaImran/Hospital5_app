json.array!(@rooms) do |room|
  json.extract! room, :id, :rno, :rtype
  json.url room_url(room, format: :json)
end
