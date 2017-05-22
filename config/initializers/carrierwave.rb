
# unless Rails.env.production?
#   require 'dotenv'
#   Dotenv.load
# end

# CarrierWave.configure do |config|
#   config.fog_provider = 'fog'
#   config.fog_credentials = {
#     provider: 'AWS',
#     aws_access_key_id: ENV['AWS_ACCESS_KEY_ID'],
#     aws_secret_access_key: ENV['AWS_SECRET_ACCESS_KEY'],
#     region: ENV['AWS_REGION']
#   }

#   config.fog_directory = ENV['AWS_S3_BUCKET']
#   config.cache_storage = :fog
#   config.asset_host = ENV['S3_ASSET_HOST'] + '/' + ENV['AWS_S3_BUCKET']
# end

#######################################################################
# require 'carrierwave/storage/abstract'
# require 'carrierwave/storage/file'
# require 'carrierwave/storage/fog'

# CarrierWave.configure do |config|
#   config.storage = :fog
#   config.fog_credentials = {
#     provider: 'AWS',
#     aws_access_key_id: ENV['AWS_ACCESS_KEY_ID'],
#     aws_secret_access_key: ENV['AWS_SECRET_ACCESS_KEY'],
#     region: ENV['AWS_REGION']
#   }

#   case Rails.env
#     when 'development'
#         config.fog_directory  = ENV['AWS_S3_BUCKET']
#         config.asset_host = ENV['S3_ASSET_HOST'] + '/' + ENV['AWS_S3_BUCKET']
#     when 'production'
#         config.fog_directory  = ENV['AWS_S3_BUCKET']
#         config.asset_host = ENV['S3_ASSET_HOST'] + '/' + ENV['AWS_S3_BUCKET']
#     end
# end

######################################################################


# CarrierWave.configure do |config|
#   config.asset_host = "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
# end
