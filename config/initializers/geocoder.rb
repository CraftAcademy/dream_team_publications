Geocoder.configure(
  timeout: 3,
  lookup: :google,
  api_key: Rails.application.credentials.google[:google_api_client],
  units: :km,
)
