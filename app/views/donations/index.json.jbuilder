json.array!(@donations) do |donation|
  json.extract! donation, :id, :charity_id, :user_id, :amount, :recurring, :frequency
  json.url donation_url(donation, format: :json)
end
