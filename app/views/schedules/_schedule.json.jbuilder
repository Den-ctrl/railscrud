json.extract! schedule, :id, :event, :start_date, :end_date, :public_uid, :created_at, :updated_at
json.url schedule_url(schedule, format: :json)
