json.extract! meeting, :id, :name, :description, :created_at, :updated_at
json.url meeting_url(meeting, format: :json)
