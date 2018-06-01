if Rails.env.development?
    ForestLiana.env_secret = Rails.application.credentials.forest_env_secret
    ForestLiana.auth_secret = Rails.application.credentials.forest_auth_secret
  else
    ForestLiana.env_secret = ENV["FOREST_ENV_SECRET"]
    ForestLiana.auth_secret = ENV["FOREST_AUTH_SECRET"]
  end