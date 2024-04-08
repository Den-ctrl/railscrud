json.extract! profile, :id, :user_id, :first_name, :middle_name, :suffix, :created_at, :updated_at
json.url profile_url(profile, format: :json)
