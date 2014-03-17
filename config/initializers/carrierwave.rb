# config/initializers/carrierwave.rb

CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider               => 'AWS',                        # required
    :aws_access_key_id      => ENV['AWS_ACCESS_KEY_ID'], # 'AKIAIAXCYLQ52XG3J2AA',       # required
    :aws_secret_access_key  => ENV['AWS_SECRET_ACCESS_KEY'], #ENV['AWS_SECRET_ACCESS_KEY'], #'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',  # required
    :region                 => 'us-west-2',                  # optional, defaults to 'us-east-1'
#    :host                   => 's3.amazonaws.com',             # optional, defaults to nil
#    :endpoint               => 'https://s3-us-west-2.amazonaws.com' # optional, defaults to nil
  }
  config.fog_directory  = 'shoeaddict'                       # required ¿is this the bucket name?
  config.fog_public     = true                                    # optional, defaults to true
  config.fog_attributes = {'Cache-Control'=>'max-age=315576000'}  # optional, defaults to {}
end
