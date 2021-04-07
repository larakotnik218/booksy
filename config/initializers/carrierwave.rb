CarrierWave.configure do |config|
  config.fog_credentials = {
    provider: 'AWS',
    aws_access_key_id: ENV['AWS_ACCESS_KEY_ID'],
    aws_secret_access_key: ENV['AWS_SECRET_ACCESS_KEY'],
    region: 'eu-central-1'
  }

  config.storage = :fog
  config.permissions = 0666
  config.cache_dir = "#{Rails.root}/tmp/uploads"
  config.fog_directory = ENV['S3_BUCKET']
  config.fog_public = false
  config.fog_attributes = { cache_control: "public, max-age=#{356.days.to_i}" }

end
